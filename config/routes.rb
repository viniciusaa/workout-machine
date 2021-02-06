Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :workouts, only: [:show, :index, :create, :destroy]
  root "workouts#index"
  resources :exercises
end
