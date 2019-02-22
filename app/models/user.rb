class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :user_favorites
  has_many :favorites, through: :user_favorites
  has_secure_password

end
