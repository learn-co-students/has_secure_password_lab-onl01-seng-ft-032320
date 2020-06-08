Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#show'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
end
