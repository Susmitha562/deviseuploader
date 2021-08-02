Rails.application.routes.draw do
  #resources :articles
  devise_for :users
  resources :articles
  root to: "articles#index"
end
