class Message < ApplicationRecord
  attribute :messages, :string, default: 'message'
  belongs_to :conversation
  belongs_to :favorite, optional: true

  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'

end
