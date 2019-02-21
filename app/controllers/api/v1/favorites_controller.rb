class Api::V1::FavoritesController < ApplicationController
  before_action :find_favorite, only:[:show]

  def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def show

  render json: @favorite
  end




  private
  def favorite_params
  params.require(:favorite).permit(:title, :image, :details, :topic_id)
  end

  def find_favorite
  @favorite = Favorite.find(params[:id])
  end
end
