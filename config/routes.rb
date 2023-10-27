Rails.application.routes.draw do
  get 'posts', to: 'posts#index'
  get 'about', to: 'about#index'
  get 'home', to: 'home#index'

  get '/users/:id', to: 'users#profile', as: 'users_profile'
  resources :users


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end