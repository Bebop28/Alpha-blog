Rails.application.routes.draw do
  root 'static_pages#new'
  get '/about', to: 'static_pages#about'
  get 'signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :articles 
  resources :users, except: [:new]
  resources :categories, except: [:destroy]
end