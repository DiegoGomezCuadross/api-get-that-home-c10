#frozen_string_literal: true

#DOC: ....
class PropertiesController < ApplicationController
    skip_before_action :authorize
    before_action :set_property, only: %i[show update destroy]

   # GET /products
  def index
    @properties = Property.all

    render json: @properties
  end

  # GET /products/1
  def show
    render json: @property
  end

  # POST /products
  def create
    @property = Property.new(property_params)

    if @property.save
      render json: @property, status: :created
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @property.update(property_params)
      render json: @property
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @property.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_property
    @property = Property.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def property_params
    params.permit(:operation_type, :address, :price, :montly_rent, :maintanance, :property_type, :bedrooms, :bathrooms, :area, :pets, :about, :photo, :user_id, :active, :favorite, :contacted)
  end
end
