Rails.application.routes.draw do
  root "static#home"

  get 'sign-in', to: "sessions#new"
  post 'sign-in', to: "sessions#create"

resources :users
end