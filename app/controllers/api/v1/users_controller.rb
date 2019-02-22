class Api::V1::UsersController < ApplicationController
  before_action :find_user, only:[:show]

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show

  render json: @user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      token = encode_token(@user.id)
      render json: {user: UserSerializer.new(@user), token: token}
    end

  end




  private
  def user_params
  params.require(:user).permit(:username, :email, :password)
  end

  def find_user
  @user = User.find(params[:id])
  end


end
