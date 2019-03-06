class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password, :conversations
  # has_many :user_groups
  # has_many :groups, through: :user_groups
  has_many :user_favorites
  has_many :favorites, through: :user_favorites

  #has_many :senders, :foreign_key => :sender_id, class_name: "Message"
  #has_many :receivers, :foreign_key => :receiver_id, class_name: "Message"
  # has_many :messages, :foreign_key => :sender_id
  # has_many :conversations, through: :messages

 # has_many :senders, class_name: 'Message', foreign_key: 'sender_id'
 # has_many :receivers, class_name: 'Message', foreign_key: 'receiver_id'
 #
 # has_many :messages
 # has_many :conversations, through: :messages

 # has_many :sender_relationships, class_name: 'Message', foreign_key: 'sender_id'
 # has_many :receiver_relationships, class_name: 'Message', foreign_key: 'receiver_id'
 #
 # has_many :senders, through: :sender_relationships, source: :sender
 # has_many :receivers, through: :receiver_relationships, source: :receiver
 #
 #has_many :messages
 #has_many :conversations, through: :messages
 has_many :sent_messages, :class_name => "Message", :foreign_key => "sender_id"
 has_many :received_messages, :class_name => "Message", :foreign_key => "receiver_id"
 has_many :receivers, through: :sent_messages
 has_many :senders, through: :received_messages
 # has_many :conversations, through: :sent_message
end
