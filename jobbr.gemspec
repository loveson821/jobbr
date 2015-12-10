# -*- encoding: utf-8 -*-
# stub: jobbr 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jobbr"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Christian Blavier"]
  s.date = "2015-12-07"
  s.description = "Rails engine to manage and supervise your batch jobs. Based on sidekiq."
  s.email = ["cblavier@gmail.com"]
  s.executables = ["jobbr"]
  s.files = [".gitignore", ".rspec", ".ruby-version", ".travis.yml", "Gemfile", "Gemfile.lock", "MIT-LICENSE", "README.rdoc", "Rakefile", "app/assets/images/jobbr/.gitkeep", "app/assets/javascripts/jobbr/application.js.coffee", "app/assets/stylesheets/jobbr/application.css.scss", "app/controllers/jobbr/application_controller.rb", "app/controllers/jobbr/delayed_jobs_controller.rb", "app/controllers/jobbr/jobs_controller.rb", "app/controllers/jobbr/runs_controller.rb", "app/helpers/jobbr/application_helper.rb", "app/models/jobbr/delayed.rb", "app/models/jobbr/job.rb", "app/models/jobbr/log_message.rb", "app/models/jobbr/run.rb", "app/models/jobbr/scheduled.rb", "app/views/jobbr/jobs/_job_list.html.haml", "app/views/jobbr/jobs/index.html.haml", "app/views/jobbr/jobs/show.html.haml", "app/views/jobbr/runs/_logs.html.haml", "app/views/jobbr/runs/show.html.haml", "app/views/layouts/jobbr/application.html.haml", "bin/jobbr", "config/locales/jobbr.en.yml", "config/routes.rb", "jobbr.gemspec", "lib/generators/jobbr/delayed_job/USAGE", "lib/generators/jobbr/delayed_job/delayed_job_generator.rb", "lib/generators/jobbr/delayed_job/templates/delayed_job.erb", "lib/generators/jobbr/initializer/USAGE", "lib/generators/jobbr/initializer/initializer_generator.rb", "lib/generators/jobbr/initializer/templates/jobbr.rb", "lib/generators/jobbr/scheduled_job/USAGE", "lib/generators/jobbr/scheduled_job/scheduled_job_generator.rb", "lib/generators/jobbr/scheduled_job/templates/scheduled_job.erb", "lib/generators/jobbr/scheduled_job_config/USAGE", "lib/generators/jobbr/scheduled_job_config/scheduled_job_config_generator.rb", "lib/generators/jobbr/scheduled_job_config/templates/schedule.rb", "lib/jobbr.rb", "lib/jobbr/engine.rb", "lib/jobbr/logger.rb", "lib/jobbr/ohm.rb", "lib/jobbr/ohm_pagination.rb", "lib/jobbr/version.rb", "lib/jobbr/whenever.rb", "lib/tasks/jobbr_tasks.rake", "script/rails", "spec/controllers/delayed_jobs_controller_spec.rb", "spec/dummy/README.rdoc", "spec/dummy/Rakefile", "spec/dummy/app/assets/javascripts/application.js", "spec/dummy/app/assets/stylesheets/application.css", "spec/dummy/app/controllers/application_controller.rb", "spec/dummy/app/controllers/home_controller.rb", "spec/dummy/app/helpers/application_helper.rb", "spec/dummy/app/mailers/.gitkeep", "spec/dummy/app/models/.gitkeep", "spec/dummy/app/models/delayed_jobs/dummy_job.rb", "spec/dummy/app/models/delayed_jobs/other_dummy_job.rb", "spec/dummy/app/models/scheduled_jobs/dummy_heroku_job.rb", "spec/dummy/app/models/scheduled_jobs/dummy_job.rb", "spec/dummy/app/models/scheduled_jobs/dummy_scheduled_job.rb", "spec/dummy/app/models/scheduled_jobs/logging_job.rb", "spec/dummy/app/views/home/index.html.haml", "spec/dummy/app/views/layouts/application.html.erb", "spec/dummy/bin/rails", "spec/dummy/config.ru", "spec/dummy/config/application.rb", "spec/dummy/config/boot.rb", "spec/dummy/config/database.yml", "spec/dummy/config/environment.rb", "spec/dummy/config/environments/development.rb", "spec/dummy/config/environments/production.rb", "spec/dummy/config/environments/test.rb", "spec/dummy/config/initializers/backtrace_silencers.rb", "spec/dummy/config/initializers/inflections.rb", "spec/dummy/config/initializers/jobbr.rb", "spec/dummy/config/initializers/mime_types.rb", "spec/dummy/config/initializers/secret_token.rb", "spec/dummy/config/initializers/session_store.rb", "spec/dummy/config/initializers/wrap_parameters.rb", "spec/dummy/config/locales/en.yml", "spec/dummy/config/mongoid.yml", "spec/dummy/config/routes.rb", "spec/dummy/config/schedule.rb", "spec/dummy/db/development.sqlite3", "spec/dummy/db/test.sqlite3", "spec/dummy/lib/assets/.gitkeep", "spec/dummy/log/.gitkeep", "spec/dummy/public/404.html", "spec/dummy/public/422.html", "spec/dummy/public/500.html", "spec/dummy/public/favicon.ico", "spec/features/job_list_feature_spec.rb", "spec/generators/delayed_job_generator_spec.rb", "spec/generators/initializer_generator_spec.rb", "spec/generators/scheduled_job_config_generator_spec.rb", "spec/generators/scheduled_job_generator_spec.rb", "spec/models/delayed_spec.rb", "spec/models/job_spec.rb", "spec/models/scheduled_spec.rb", "spec/spec_helper.rb", "spec/support/generator_destination_root.rb", "spec/tasks/jobbr_tasks_spec.rb"]
  s.homepage = "https://github.com/cblavier/jobbr"
  s.rubygems_version = "2.4.6"
  s.summary = "Rails engine to manage jobs."
  s.test_files = ["spec/controllers/delayed_jobs_controller_spec.rb", "spec/dummy/README.rdoc", "spec/dummy/Rakefile", "spec/dummy/app/assets/javascripts/application.js", "spec/dummy/app/assets/stylesheets/application.css", "spec/dummy/app/controllers/application_controller.rb", "spec/dummy/app/controllers/home_controller.rb", "spec/dummy/app/helpers/application_helper.rb", "spec/dummy/app/mailers/.gitkeep", "spec/dummy/app/models/.gitkeep", "spec/dummy/app/models/delayed_jobs/dummy_job.rb", "spec/dummy/app/models/delayed_jobs/other_dummy_job.rb", "spec/dummy/app/models/scheduled_jobs/dummy_heroku_job.rb", "spec/dummy/app/models/scheduled_jobs/dummy_job.rb", "spec/dummy/app/models/scheduled_jobs/dummy_scheduled_job.rb", "spec/dummy/app/models/scheduled_jobs/logging_job.rb", "spec/dummy/app/views/home/index.html.haml", "spec/dummy/app/views/layouts/application.html.erb", "spec/dummy/bin/rails", "spec/dummy/config.ru", "spec/dummy/config/application.rb", "spec/dummy/config/boot.rb", "spec/dummy/config/database.yml", "spec/dummy/config/environment.rb", "spec/dummy/config/environments/development.rb", "spec/dummy/config/environments/production.rb", "spec/dummy/config/environments/test.rb", "spec/dummy/config/initializers/backtrace_silencers.rb", "spec/dummy/config/initializers/inflections.rb", "spec/dummy/config/initializers/jobbr.rb", "spec/dummy/config/initializers/mime_types.rb", "spec/dummy/config/initializers/secret_token.rb", "spec/dummy/config/initializers/session_store.rb", "spec/dummy/config/initializers/wrap_parameters.rb", "spec/dummy/config/locales/en.yml", "spec/dummy/config/mongoid.yml", "spec/dummy/config/routes.rb", "spec/dummy/config/schedule.rb", "spec/dummy/db/development.sqlite3", "spec/dummy/db/test.sqlite3", "spec/dummy/lib/assets/.gitkeep", "spec/dummy/log/.gitkeep", "spec/dummy/public/404.html", "spec/dummy/public/422.html", "spec/dummy/public/500.html", "spec/dummy/public/favicon.ico", "spec/features/job_list_feature_spec.rb", "spec/generators/delayed_job_generator_spec.rb", "spec/generators/initializer_generator_spec.rb", "spec/generators/scheduled_job_config_generator_spec.rb", "spec/generators/scheduled_job_generator_spec.rb", "spec/models/delayed_spec.rb", "spec/models/job_spec.rb", "spec/models/scheduled_spec.rb", "spec/spec_helper.rb", "spec/support/generator_destination_root.rb", "spec/tasks/jobbr_tasks_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 4.0.0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_runtime_dependency(%q<chronic_duration>, [">= 0"])
      s.add_runtime_dependency(%q<sass-rails>, [">= 4.0.2"])
      s.add_runtime_dependency(%q<coffee-rails>, [">= 0"])
      s.add_runtime_dependency(%q<therubyracer>, [">= 0"])
      s.add_runtime_dependency(%q<less-rails>, [">= 0"])
      s.add_runtime_dependency(%q<bootstrap-sass>, [">= 0"])
      s.add_runtime_dependency(%q<font-awesome-rails>, [">= 0"])
      s.add_runtime_dependency(%q<turbolinks>, [">= 0"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0"])
      s.add_runtime_dependency(%q<redis>, [">= 0"])
      s.add_runtime_dependency(%q<ohm>, [">= 2.0.1"])
      s.add_runtime_dependency(%q<ohm-contrib>, [">= 0"])
      s.add_runtime_dependency(%q<sidekiq>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<whenever>, [">= 0"])
      s.add_runtime_dependency(%q<require_all>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 4.0.0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<chronic_duration>, [">= 0"])
      s.add_dependency(%q<sass-rails>, [">= 4.0.2"])
      s.add_dependency(%q<coffee-rails>, [">= 0"])
      s.add_dependency(%q<therubyracer>, [">= 0"])
      s.add_dependency(%q<less-rails>, [">= 0"])
      s.add_dependency(%q<bootstrap-sass>, [">= 0"])
      s.add_dependency(%q<font-awesome-rails>, [">= 0"])
      s.add_dependency(%q<turbolinks>, [">= 0"])
      s.add_dependency(%q<kaminari>, [">= 0"])
      s.add_dependency(%q<redis>, [">= 0"])
      s.add_dependency(%q<ohm>, [">= 2.0.1"])
      s.add_dependency(%q<ohm-contrib>, [">= 0"])
      s.add_dependency(%q<sidekiq>, [">= 3.0.0"])
      s.add_dependency(%q<whenever>, [">= 0"])
      s.add_dependency(%q<require_all>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 4.0.0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<chronic_duration>, [">= 0"])
    s.add_dependency(%q<sass-rails>, [">= 4.0.2"])
    s.add_dependency(%q<coffee-rails>, [">= 0"])
    s.add_dependency(%q<therubyracer>, [">= 0"])
    s.add_dependency(%q<less-rails>, [">= 0"])
    s.add_dependency(%q<bootstrap-sass>, [">= 0"])
    s.add_dependency(%q<font-awesome-rails>, [">= 0"])
    s.add_dependency(%q<turbolinks>, [">= 0"])
    s.add_dependency(%q<kaminari>, [">= 0"])
    s.add_dependency(%q<redis>, [">= 0"])
    s.add_dependency(%q<ohm>, [">= 2.0.1"])
    s.add_dependency(%q<ohm-contrib>, [">= 0"])
    s.add_dependency(%q<sidekiq>, [">= 3.0.0"])
    s.add_dependency(%q<whenever>, [">= 0"])
    s.add_dependency(%q<require_all>, [">= 0"])
  end
end
