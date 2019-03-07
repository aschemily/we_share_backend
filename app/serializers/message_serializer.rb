class MessageSerializer < ActiveModel::Serializer
  attributes :messages, :conversation, :favorite, :sender, :receiver, :conversation_id
  belongs_to :conversation
  belongs_to :favorite, optional: true

  #belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
  #belongs_to :receiver, :foreign_key => :reciever_id, class_name: 'User', optional: true

 belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
 belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'


end
