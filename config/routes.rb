Rails.application.routes.draw do
  root to: 'maps#home'
  match '/manage', to: 'maps#manage', via: 'get'
  resources :constructions, only: [:index, :create, :edit, :update, :destroy]
  resources :points
end
