Rails.application.routes.draw do
  get 'items/new'
  get 'items/index'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  post '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post 'items/:id', to: 'cart_items#create'
  get 'cart_items/index'
  post 'cart_items/index', to: 'orders#create'
  get 'orders/index'
  resources :microposts
  resources :users
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
