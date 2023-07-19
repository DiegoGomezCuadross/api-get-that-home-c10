Rails.application.routes.draw do

get "/properties" => "properties#index"

#sessions
 post "/login" => "sessions#create"
 delete "/logout" => "sessions#destroy"
end
