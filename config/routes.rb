Rails.application.routes.draw do
  root 'static_pages#new'

  get '/about', to: 'static_pages#about' 
end