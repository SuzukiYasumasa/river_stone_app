Rails.application.routes.draw do
  devise_for :users
  root to: 'points#index'
  resources :constructions, only: [:index, :create, :edit, :update, :destroy]
  resources :points
end
