#frozen_string_literal: true

#DOC: ....
class PropertiesController < ApplicationController
    def index
     render json: {
        user: current_user.name,
        properties: %w[property-1 property-2]
    }
    end
end
