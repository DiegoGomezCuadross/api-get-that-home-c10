#frozen_string_literal: true

#DOC: ...

class ApplicationController < ActionController::API
    include ActionController::HttpAuthentication::Token::ControllerMethods
    before_action :authorize

    def authorize
       current_user || respond_unauthorized("Access denied")
    end

    def current_user
         @current_user ||= authenticate_token
    end


    def respond_unauthorized(message)
        render json: { error: message   }, status: :unauthorized
    end

    
    private

    def authenticate_token
        authenticate_with_http_token do |token, _options|
          User.where(token:).first
        end # <#User > || nil 
    end
end
