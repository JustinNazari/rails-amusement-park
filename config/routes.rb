Rails.application.routes.draw do
  root "static#home"

  get 'signin', to: "sessions#new"
  post 'signin', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"

  get 'signup', to: "user#new"
  post 'signup', to: "user#create"
  post 'rides/new', to: "rides#create"

  resources :users
  resources :attractions

end