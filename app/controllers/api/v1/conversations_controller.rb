class Api::V1::ConversationsController < ApplicationController
  wrap_parameters :conversation, include:[:conversation_name]

  def index
    #byebug
    @user = User.find(params[:id])
    #@conversation = Conversation.all
    #byebug
    render json: @user
  end


  def show
    @conversation = Conversation.find(params[:id])
    #byebug

     render json: @conversation.messages
    # if @user.id == current_user.id
    #   render json: @conversation.messages
    # end
  end

  # def create
  #     #byebug
  #   @conversation = Conversation.new(conversation_params)
  #
  #   if @conversation.save
  #     render json: @conversation
  #   end
  #
  # end

  # @conversation = Conversation.find_or_create_by(params[:id])
  #
  # @conversation = Conversation.new(conversation_params)
  # byebug
  # if @conversation.save
  #   render json: @conversation
  # end

  # def create
  #   #byebug
  #   # if Conversation.exists?(conversation_id: conversation_id)
  #   #     @message = Message.create(message_params)
  #   #    else
  #       @conversation = Conversation.create(conversation_name: 'conversation created')
  #       @message = @conversation.messages.new(message_params)
  #     if @message.save
  #
  #       render json: @message
  #     end
  #
  # end

  # private
  #
  # def conversation_params
  # params.require(:conversation).permit(:receiver_id, :sender_id, :conversation_name)
  # end



end
