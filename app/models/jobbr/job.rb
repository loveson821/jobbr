require 'jobbr/logger'
require 'jobbr/ohm'

module Jobbr

  class Job < ::Ohm::Model

    MAX_RUN_PER_JOB = 500

    include ::Ohm::Timestamps
    include ::Ohm::DataTypes

    attribute :type
    attribute :delayed, Type::Boolean

    collection :runs, 'Jobbr::Run'

    index :type
    index :delayed

    def self.instance(instance_type = nil)
      if instance_type
        job_class = instance_type.camelize.constantize
      else
        job_class = self
      end

      job = Job.find(type: job_class.to_s).first
      if job.nil?
        delayed = job_class.new.is_a?(Jobbr::DelayedJob)
        job = Job.create(type: job_class.to_s, delayed: delayed)
      end
      job
    end

    def self.run
      instance.inner_run
    end

    def self.description(desc = nil)
      @description = desc if desc
      @description
    end

    def self.delayed
      find(delayed: true)
    end

    def self.scheduled
      find(delayed: false)
    end

    def self.count
      all.count
    end

    def self.by_name(name)
      class_name = name.underscore.camelize
      Job.find(type: class_name).first
    end

    def every
      if scheduled?
        require self.type.underscore
        Object::const_get(self.type).every
      else
        nil
      end
    end

    def inner_run(job_run_id = nil, params = {})
      job_run = nil
      if job_run_id
        job_run = Run[job_run_id]
        job_run.status = :running
        job_run.started_at = Time.now
        job_run.save
      else
        job_run = Run.create(status: :running, started_at: Time.now, job: self)
      end

      # prevent Run collection to grow beyond max_run_per_job
      runs_count = runs.count
      if runs_count > max_run_per_job
        runs.sort(by: :started_at, order: 'ASC', limit: [0, runs_count - max_run_per_job]).each(&:delete)
      end

      # overidding Rails.logger
      old_logger = Rails.logger
      Rails.logger = Jobbr::Logger.new(Rails.logger, job_run)

      handle_process_interruption(job_run, 'TERM')
      handle_process_interruption(job_run, 'INT')

      begin
        if delayed?
          perform(params, job_run)
        else
          perform
        end
        job_run.status = :success
        job_run.progress = 100
      rescue Exception => e
        job_run.status = :failure
        logger.error(e.message)
        logger.error(e.backtrace)
        raise e
      ensure
        Rails.logger = old_logger
        job_run.finished_at = Time.now
        job_run.save
      end
    end

    def handle_process_interruption(job_run, signal)
      Signal.trap(signal) do
        job_run.status = :failure
        Rails.logger.error("Job interrupted by a #{signal} signal")
        job_run.finished_at = Time.now
        job_run.save
      end
    end

    def last_run
      @last_run ||= self.ordered_runs.first
    end

    def average_run_time
      return 0 if runs.empty?
      (runs.map { |run| run.run_time }.compact.inject { |sum, el| sum + el }.to_f / runs.count).round(2)
    end

    def to_param
      self.type.underscore.dasherize.gsub('/', '::')
    end

    def name
      self.type.demodulize.underscore.humanize
    end

    def scheduled?
      !self.delayed
    end

    def delayed?
      self.delayed
    end

    def perform(*args)
      Object::const_get(self.type).new.perform(*args)
    end

    def ordered_runs
      self.runs.sort(by: :started_at, order: 'DESC')
    end

    protected

    # mocking purpose
    def max_run_per_job
      MAX_RUN_PER_JOB
    end

    def logger
      Rails.logger
    end

  end

end
