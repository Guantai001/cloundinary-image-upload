Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # AIRBNB
  get "/airbnbs", to: "airbnbs#index"
  post "/airbnbs", to: "airbnbs#create"
  # ITEM
  get "/items", to: "items#index"
  post "/items", to: "items#create"
end
