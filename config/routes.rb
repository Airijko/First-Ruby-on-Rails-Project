Rails.application.routes.draw do
  get 'posts', to: 'posts#index'
  get 'about', to: 'about#index'

  root 'home#index'

  get '/users/:id', to: 'users#profile', as: 'users_profile'
  resources :users
end
