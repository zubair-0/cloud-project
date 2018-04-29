Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :rooms
    resources :reviews
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :rooms
  resources :reviews
end
