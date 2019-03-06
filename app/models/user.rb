class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, allow_nil: true

  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :user_favorites
  has_many :favorites, through: :user_favorites



  # has_many :sender_relationships, class_name: 'Message'
  # has_many :receiver_relationships, class_name: 'Message'

  #has_many :senders, through: :sender_relationships, source: :sender
  #has_many :receivers, through: :messages

  has_many :sent_messages, :class_name => 'Message', :foreign_key => "sender_id"
  has_many :received_messages, :class_name => 'Message', :foreign_key => "receiver_id"
  has_many :receivers, through: :sent_messages
  has_many :senders, through: :received_messages
  has_many :messages
  has_many :conversations, through: :messages

  

  def conversations
    self.sent_messages.map do |message|
      message.conversation
    end
  end

end
