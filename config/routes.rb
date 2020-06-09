Rails.application.routes.draw do
  resources :users
  resources :sessions
  post '/create', to: "sessions#create", as: "login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
