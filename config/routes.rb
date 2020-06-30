Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

      #get "/authors/new", to: "authors#new", as: "new_author"
      get "/users", to: "users#new"
      post "/users", to: "users#create"
      get "/homepage", to: "users#homepage", as: "homepage"

      get "/login", to: "sessions#new"
      post "/login", to: "sessions#create"
      post "/logout", to: "sessions#delete"
      
    root 'application#show'
end