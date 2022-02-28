Rails.application.routes.draw do
  
  root to: 'homes#top', as: "home"
  devise_for :users
  get 'homes/about' => 'homes#about', as: 'about'
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  
  end
