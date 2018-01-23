Rails.application.routes.draw do
  root 'static_pages#new'
  get 'users/new'
  get 'articles/new'
  get '/about', to: 'static_pages#about'
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :articles 
  resources :users
end