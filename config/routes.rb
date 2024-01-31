Rails.application.routes.draw do
  devise_for :users
  root "activities#index"

  resources :activities

  get "/user/:id", to: "user#show"
  get "/activities", to: "activities#index"
  get "/activities/new", to: "activities#new"
  get "/activities/:id", to: "activity#show"
  get "/activities/:id/edit", to: "activity#edit"

  # Defines the root path route ("/")

end
