Rails.application.routes.draw do
  devise_for :users
  root to: 'gardens#index'

  resources :gardens do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index edit update show]

  namespace :admin do
    resources :gardens, only: :index
  end
end
