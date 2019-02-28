class Api::V1::MessagesController < ApplicationController
wrap_parameters :message, include:[:messages, :user_id, :conversation_id, :favorite_id]


def create

  @conversation = Conversation.create(conversation_name: 'conversation created')

  @message = @conversation.messages.new(message_params)  
  if @message.save
    render json: @message
  end

end

private

def message_params
  params.require(:message).permit(:messages, :user_id, :conversation_id, :favorite_id)
end


end
