Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  patch '/update', to: 'hangouts#update'
  resources :users, except: :index
  resources :hangouts, only: [:index, :new, :create, :show, :edit, :update]

  resources :restaurants, only: [:index, :show]
  get '/login'=> 'sessions#new'
  post '/login'=> 'sessions#create'
  post '/logout'=> 'sessions#destroy'
  get '/pages/cuisine', to: 'pages#cuisine'
  get '/pages/date', to: 'pages#date'
  get '/pages/rating', to: 'pages#rating'
end
