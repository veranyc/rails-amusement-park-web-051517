Rails.application.routes.draw do
  root "sessions#index"
  get "/signin" => "sessions#new", as: :login
  get "/" => "sessions#index"
  get "/users/new" => "users#new", as: :signup
  post "/login" => "sessions#create", as: :sessions
  get "/users/:id" => "users#show", as: :user
  post "/users" => "users#create"
  get "/users/:id/edit" => "users#edit", as: :edit_user
  put "/users/:id" => "users#update"
  patch "/users/:id" => "users#update"
  delete "/logout" => "sessions#destroy"
  get "/attractions" => "attractions#index"
  get '/attractions/new' => 'attractions#new'
  post '/attractions' => 'attractions#create'
  get "/attractions/:id" => "attractions#show", as: :attraction
  post "/attractions/:id" => "attractions#take_ride", as: :take_ride
  get '/attractions/:id/edit' => 'attractions#edit', as: :edit_attraction
  put "/attractions/:id" => "attractions#update"
  patch "/attractions/:id" => "attractions#update"





end
