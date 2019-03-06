class Conversation < ApplicationRecord
  belongs_to :favorite, optional: true

  has_many :messages
  has_many :users, through: :messages, :source => 'Message'
end
