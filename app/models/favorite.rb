class Favorite < ApplicationRecord
  belongs_to :topic
  has_many :conversations
  has_many :user_favorites
  has_many :users, through: :user_favorites
  has_many :messages
end
