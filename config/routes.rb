Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#show", page: "home"

  # Handle Static pages
  get "/pages/*page" => "pages#show"

  resources :collections
end
