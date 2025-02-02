Rails.application.routes.draw do
  get 'users/new'
  resources :Posts, only: [:new, :create, :index]
  root 'posts#index'
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signin',  to: 'sessions#create',         via: 'post'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match    '/signup',  to: 'users#new', via: 'get'
  match   '/signup',  to: 'users#create', via: 'post'
  resources :users
end
