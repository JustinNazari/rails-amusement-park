Rails.application.routes.draw do
  root "static#home"

  get 'signin', to: "sessions#new"
  post 'signin', to: "sessions#create"

  get 'signup', to: "user#new"
  post 'signup', to: "user#create"

resources :users
end