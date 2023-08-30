Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'listings#index'
  resources :listings, except: :index do
    resources :bookings, only: %i[show new create]
  end
  resources :users, only: %i[show]
end
