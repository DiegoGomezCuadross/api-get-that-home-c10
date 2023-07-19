#frozen_string_literal: true

#DOC: ...

class SessionsController < ApplicationController
    skip_before_action :authorize, only: :create
#POST / LOGIN
def create
    user = User.find_by(email: params[:email]) #nil || <#user/>
    if user&.authenticate(params[:password])
        #regenerar el token
        user.regenerate_token
        render json: {token: user.token}
    else
        respond_unauthorized("Incorrect email or password")
    end
end

#DELETE / LOGOUT
    def destroy
        current_user.invalid_token
        head :ok
    end
end