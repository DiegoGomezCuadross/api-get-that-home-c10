Rails.application.routes.draw do

resources :properties

#sessions
 post "/login" => "sessions#create"
 delete "/logout" => "sessions#destroy"
end
