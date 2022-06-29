Rails.application.routes.draw do
  resources :projects
  resources :teams
  resources :users, only: [:create, :destroy, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  delete "/logout", to: "sessions#destroy" 
  get "/me", to: "users#show"
end
