class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, allow_nil: true

  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :user_favorites
  has_many :favorites, through: :user_favorites
  has_many :messages
  has_many :conversations, through: :messages


end
