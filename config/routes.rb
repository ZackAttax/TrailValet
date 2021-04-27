Rails.application.routes.draw do

  root "sessions#home"
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/auth/facebook/callback' => 'sessions#create_fb'
  delete '/logout' => 'sessions#destroy'
  resources :maintenance_features
  resources :comments
  resources :users
  resources :trails do
    resources :maintenance_features
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
