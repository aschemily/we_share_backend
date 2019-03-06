class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :conversation_name

  has_many :messages
  has_many :users, through: :messages

end
