Rails.application.routes.draw do
  devise_for :users
  root "activities#index"

  resources :activities
  resource :user

  get "/user/:id", to: "user#show"

  # Defines the root path route ("/")

end
