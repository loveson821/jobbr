module Jobbr

  class JobsController < Jobbr::ApplicationController

    def index
      @scheduled_jobs = Jobbr::Job.scheduled
      @delayed_jobs = Jobbr::Job.delayed
    end

    def show
      if @job = Job.by_name(params[:id])
        @runs = Jobbr::OhmPagination.new(@job.runs).sort_by(:started_at).order('ALPHA DESC').per(10).page(params[:page])
        @last_run = @job.last_run
      end
    end

    def exec
      if @job = Job.by_name(params[:id])
        # puts @job.inspect
        run = @job.run()
        redirect_to job_run_path(@job, run)
        # @job.run_by_name("scheduled_jobs/#{Job.}")
      end
    end

  end

end
