Rails.application.routes.draw do

  get "/" => "sessions#new"
  get "/signup" => "users#new"
  post "/login" => "sessions#create"
  get "/users/:id" => "users#show", as: :user
  post "/users" => "users#create"
  get "/users/:id/edit" => "users#edit", as: :edit_user
  put "/users/:id" => "users#update"
  patch "/users/:id" => "users#update"
  post "/logout" => "sessions#destroy"




end
