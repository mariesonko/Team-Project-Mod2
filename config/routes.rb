Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  patch '/update', to: 'hangouts#update'
  resources :users, except: :index
  resources :hangouts, only: [:index, :new, :create, :show, :edit, :update]
  # resources :hangouts do
  #   match :join, via: [:post, :delete], :on => :user
  # end
  resources :restaurants, only: [:index, :show]
  get '/login'=> 'sessions#new'
  post '/login'=> 'sessions#create'
  post '/logout'=> 'sessions#destroy'
  #should above destroy route be post or delete?
end
