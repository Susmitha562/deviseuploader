Rails.application.routes.draw do
  resources :tests
  #use_doorkeeper
  #resources :articles
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end
  devise_for :users
  resources :articles
  root to: "articles#index"
end
