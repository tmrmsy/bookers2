Rails.application.routes.draw do
  get 'books/top'
  root to: 'homes#top', as: "home"
  devise_for :users
  get 'homes/about' => 'homes#about', as: 'about'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
