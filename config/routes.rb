Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gardens do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[edit update show]

  namespace :admin do
    resources :gardens, only: :index
  end
end
