Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root "static_pages#home"
  get '/home',    to:  'static_pages#home'
  get '/help',    to:   'static_pages#help'
  get '/about',   to:   'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup',  to:  'users#new'
  post '/signup', to:   'users#create'
  get '/login',   to:   'sessions#new'
  post '/login',  to:   'sessions#create'
  get '/logout',  to:   'sessions#destroy'
  delete '/logout', to:  'sessions#destroy'

  resources :users

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
