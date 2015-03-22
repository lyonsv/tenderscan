Rails.application.routes.draw do
  resources :measurements
  resources :cows
  root to: 'cows#index'
  devise_for :users
  resources :users
  get 'cows/display', to: "cows#display"  
end
