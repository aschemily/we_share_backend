class Api::V1::AuthController < ApplicationController
  #   skip_before_action :authorized, only:[create]
  wrap_parameters :user, include:[:username, :email, :password]

  def login
    #byebug
     @user = User.find_by(username: params[:username])
     #byebug
     if @user && @user.authenticate(params[:password])
       userToken = encode_token(@user.id)

       render json: {user: UserSerializer.new(@user), token: userToken}
     else
       render json: {errors: "WHOA! You dun goofed!"}
     end
   end

   def get_user_from_token
       if current_user
         render json: current_user
       else
         render json: {errors: "WHOA! User not found!"}
       end
   end

  private
  def user_params
  params.require(:user).permit(:username, :email, :password)
  end

end
