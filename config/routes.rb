Rails.application.routes.draw do
  get 'posts', to: 'posts#index'
  get 'users', to: 'users#index'
  get 'about', to: 'about#index'
  get 'home', to: 'home#index'

  resources :users do
    get 'new_random_user', on: :collection
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end