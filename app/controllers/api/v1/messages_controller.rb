class Api::V1::MessagesController < ApplicationController
wrap_parameters :message, include:[:messages, :user_id, :conversation_id, :favorite_id]


def create

  # if Conversation.exists?(conversation_id: conversation_id)
  #     @message = Message.create(message_params)
  #    else
      @conversation = Conversation.create(conversation_name: 'conversation created')
      @message = @conversation.messages.new(message_params)
    if @message.save
      
      render json: @message
    end

end

def new_message

  @message = Message.new(message_params)
  #byebug
  if @message.save

    render json: @message
  end
end

private

def message_params
  params.require(:message).permit(:messages, :user_id, :conversation_id, :favorite_id)
end


end
