Rails.application.routes.draw do
  get 'home/index'
  #get 'sessions/new'
  # get 'sessions/creat'
  # get 'sessions/destroy'
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :posts
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  root to: 'users#index'
end
