class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :password
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :user_favorites
  has_many :favorites, through: :user_favorites

end
