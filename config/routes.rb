Jobbr::Engine.routes.draw do

  root to: 'jobs#index'

  resources :jobs do
    resources :runs
    member do
      get 'exec'
    end
  end

  # get '/jobs/:job_id/exec', :to => 'jobs#exec', as: :exec_job

  resources :delayed_jobs

end
