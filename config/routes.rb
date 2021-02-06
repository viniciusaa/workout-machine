Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :workouts, only: [:show, :index, :create, :update]
  root "workouts#index"
  resources :exercises
end
