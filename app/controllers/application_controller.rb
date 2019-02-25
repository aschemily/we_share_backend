class ApplicationController < ActionController::API
  # before_action :authorized
  #
  def encode_token(user_id)
  JWT.encode({user_id: user_id}, "password")
end

   def token
     request.headers["Authorization"]
   end

   def decode_token
     begin
       JWT.decode(token, "password")[0]["user_id"]
     rescue
       nil
     end
   end

   def current_user
     User.find_by(id: decode_token)
   end

   # def logged_in?
   #   !!current_user
   # end
   #
   # def authorized
   #   render json: {message:'Please log in'}, status: :unathorized unless logged_in?
   # end


end
