Rails.application.routes.draw do
  devise_for :users
  root "activities#index"

  resources :activities

  get "/user/:id", to: "user#show"
  get "/activities", to: "activities#index"
  get "/activities/new", to: "activities#new"
  get "/activity/:id", to: "activity#show"

  # Defines the root path route ("/")

end
