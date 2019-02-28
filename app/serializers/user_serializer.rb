class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :user_favorites
  has_many :favorites, through: :user_favorites
  has_many :messages
  has_many :conversations, through: :messages

end
