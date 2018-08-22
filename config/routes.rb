Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords"
  }
  resources :users, only: [:index, :destroy]
  resources :constructions, only: [:index, :create, :edit, :update, :destroy]
  resources :points
  root to: 'points#index'
end
