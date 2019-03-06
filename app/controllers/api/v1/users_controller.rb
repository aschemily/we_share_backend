class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only:[:create]
  #before_action :find_user, only:[:show]
  wrap_parameters :user, include:[:username, :email, :password, :password_confirmation]

  def index
   #@users = User.where.not(id: current_user.id)
    @users = User.all
    #byebug
    render json: @users
  end


  def create
    #byebug
    @user = User.new(user_params)
    #byebug
    if @user.save
      token = encode_token(@user.id)

      #render json: {user: UserSerializer.new(@user)}
      render json: {user: UserSerializer.new(@user), token:token}
    else
      render json: {errors: @user.errors.full_messages}
    end

  end

  def show

    @user = User.find(params[:id])
    if @user
        render json: @user
    else
      render json:{errors:"User not found!"}
    end

  end


  private
  def user_params
  params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def find_user
  @user = User.find(params[:id])
  end


end
