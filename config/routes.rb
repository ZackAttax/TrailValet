Rails.application.routes.draw do

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'


  resources :comments
  resources :maintenance_features
  resources :users
  resources :trails
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
