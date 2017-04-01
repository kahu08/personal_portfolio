Rails.application.routes.draw do
  devise_for :users
  root :to => "skills#index"

  get 'skills/admin'

  resources :skills do
resources :projects
end
end
