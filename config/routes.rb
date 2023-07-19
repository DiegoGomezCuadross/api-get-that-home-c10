Rails.application.routes.draw do

resources :properties

# Users
resources :users, only: :create
get "/profile", to: "users#show"
patch "/profile", to: "users#update"

#sessions
 post "/login" => "sessions#create"
 delete "/logout" => "sessions#destroy"
end
