Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  resources :users, except: :index
  resources :hangouts
  resources :restaurants, only: [:index, :show]
  # get '/login'=> 'sessions#new'
  # post '/login'=> 'sessions#create'
  # post '/logout'=> 'sessions#destroy'

  get "/signup", to: "users#new", as: "signup"
  get "/login", to: "users#show", as: "login"

end
