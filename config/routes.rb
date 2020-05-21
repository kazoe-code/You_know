Rails.application.routes.draw do
  devise_for :users

  root "photos#index"
  resources :users, only: [:edit, :update]
  resources :profiles
end
