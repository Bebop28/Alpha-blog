Rails.application.routes.draw do
  get 'articles/new'

  root 'static_pages#new'
  get '/about', to: 'static_pages#about'
  resources :articles 
end