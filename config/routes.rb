Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  root :to => "skills#index"

  get 'skills/admin'

  resources :posts

  resources :skills do
resources :projects
end
end
