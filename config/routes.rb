Rails.application.routes.draw do
  resources :cows
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
