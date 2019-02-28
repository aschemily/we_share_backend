class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :conversation_id, :messages
  belongs_to :conversation
  belongs_to :user
  belongs_to :favorite, optional: true
end
