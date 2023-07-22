class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :edit, :update, :destroy]

  # GET /properties
  def index
    @favorites = Favorite.all
  end

  # GET /properties/1
  def show
  end

  # GET /properties/new
  def new
    @favorite = Favorite.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  def create
    @property = Property.find(params[:property_id])
    @favorite = @property.favorites.build(user_id: current_user.id)
    if @favorite.save
      if !@property.replied_to_id?
        redirect_to properties_path(@property)
      else 
        redirect_to property_path(@property.replied_to_id)
      end
    end
  end

  # PATCH/PUT /properties/1
  def update
    if @favorite.update(favorite_params)
      redirect_to @favorite, notice: "Favorite was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /properties/1
  def destroy
    if @favorite.destroy
      # Add any desired redirect or response here
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite
      @favorite = Favorite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_params
      params.require(:favorite).permit(:user_id, :property_id)
    end
end