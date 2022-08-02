Rails.application.routes.draw do
  devise_for :users
  root to: "dinosaurs#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :dinosaurs do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :destroy]
end
