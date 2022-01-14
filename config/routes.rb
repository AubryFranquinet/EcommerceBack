Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'sessions#index'

  #Users routes
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  #Sessions routes
    get '/login', to: 'sessions#login'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/logout', to: 'sessions#destroy'
end
