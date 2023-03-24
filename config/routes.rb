Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  #login
  post "/login", to: "sessions#create"
  #stay logged in
  get "/me", to: "users#show"
  #logout
  delete "/logout",to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
