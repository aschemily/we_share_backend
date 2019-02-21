class Api::V1::UserFavoritesController < ApplicationController
  before_action :find_userFavorites, only:[:show]

  def index
    @userFavorites = UserFavorite.all
    render json: @userFavorites
  end

  def show

  render json: @userFavorites
  end




  private
  def userFavorites_params
  params.require(:userFavorites).permit(:user_id, :favorite_id)
  end

  def find_userFavorites
  @userFavorites = UserFavorite.find(params[:id])
  end
end
