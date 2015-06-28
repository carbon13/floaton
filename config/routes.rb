Rails.application.routes.draw do

  get 'dashbord' => 'dashbord#index'
  root to: 'dashbord#index'

  resources :floaters
  
  namespace :api, { format: 'json' } do
    resources :xchanges 
  end

  # mount Resque::Server.new, at: "/resque"

end
