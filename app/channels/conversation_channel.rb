class ConversationChannel < ApplicationCable::Channel
  def subscribed
    # Make this a UserChannel so each user will get all messages

    # In the ConversationsController
   # def create
   #   # ... @conversation = Conversation.create(..)
   #
   #   # ActionCable.server.broadcast(@converssation.user, {message})
   #   # ActionCable.server.broadcast(@current_user, {type: 'NEW_CONVERSATION'})
   # end

   # On the frontend

   # <ActionCableConsumer channel={{channel: 'UserChannel', id: props.currentUser.id}}/>

    conversation = Conversation.find(params[:id])
    stream_for conversation
    #stream_from "conversation_#{params[:id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
