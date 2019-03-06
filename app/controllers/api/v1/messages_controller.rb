class Api::V1::MessagesController < ApplicationController
wrap_parameters :message, include:[:messages, :receiver_id, :sender_id, :conversation_id, :favorite_id]


def create

      @conversation = Conversation.create(conversation_name: 'conversation created')
      @message = @conversation.messages.new(message_params)
      #byebug
    if @message.save
      render json: @message
    end

end

def show
  #byebug
  @user = User.find(params[:id])
  @message = Message.where(sender_id: @user)
  render json: @message
end

# def show_messages
#   @message = Message.find(params[:id])
#   @message = Message.all.where('sender_id IN (?) AND receiver_id IN (?)', [@message.sender_id, @message.receiver_id], [@message.sender_id, @message.receiver_id])
#
#   render json: @message
# end

def new_message

  @message = Message.new(message_params)
  #byebug
  if @message.save

    render json: @message
  end
end


def show_messages_for_only_two
  messages = Message.all.select do |message|
    (message.sender_id == params[:id2].to_i && message.receiver_id == params[:id1].to_i) ||
    (message.sender_id == params[:id1].to_i && message.receiver_id == params[:id2].to_i)
  end.uniq
  #byebug

  render json: messages
end

private

def message_params
  params.require(:message).permit(:messages, :receiver_id, :sender_id, :conversation_id, :favorite_id)
end


end
