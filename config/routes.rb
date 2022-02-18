Rails.application.routes.draw do
  get 'books/top'
  root to: 'homes#top', as: "home"
  devise_for :users
  get 'homes/about' => 'homes#about', as: 'about'
  resources :books
  
  end
