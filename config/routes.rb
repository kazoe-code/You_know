Rails.application.routes.draw do
  devise_for :users
  get 'photos/index'

  root "photos#index"
end
