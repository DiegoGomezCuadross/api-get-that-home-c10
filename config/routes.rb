Rails.application.routes.draw do
root 'home#index'

#Favorites
resources :favorites

#Properties
resources :properties do
    resources :favorites, only: [:create, :destroy]
end

# Users
resources :users, only: :create
get "/profile", to: "users#show"
patch "/profile", to: "users#update"

#sessions
 post "/login" => "sessions#create"
 delete "/logout" => "sessions#destroy"
end
