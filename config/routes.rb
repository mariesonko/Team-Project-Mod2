Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  resources :users, except: :index
  resources :hangouts
  resources :restaurants, only: [:index, :show]

  get "/signup", to: "users#new", as: "signup"
  get "/login", to: "sessions#new", as: "login"
  post '/sessions', to: "sessions#create", as: "sessions"
  # post '/logout', to: "sessions#destroy", as: "sessions"
end
