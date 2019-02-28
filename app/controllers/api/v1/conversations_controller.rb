class Api::V1::ConversationsController < ApplicationController


  def index
    @user = User.find(params[:id])

    render json: @user.conversations
  end


  def show

    @conversation = Conversation.find(params[:id])
    
     render json: @conversation.messages
    # if @user.id == current_user.id
    #   render json: @conversation.messages
    # end
  end







end
