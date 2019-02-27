class Api::V1::FavoritesController < ApplicationController
  before_action :find_favorite, only:[:show]

  def index
    @user = User.find(params[:id])

    render json: @user.favorites
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
