Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :workouts, only: [:show, :new, :create, :destroy]
  root "workouts#new"
  resources :exercises
end
