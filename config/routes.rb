Rails.application.routes.draw do
  get 'users/new'

  get 'articles/new'

  root 'static_pages#new'
  get '/about', to: 'static_pages#about'
  resources :articles 
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
end