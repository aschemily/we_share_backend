class Favorite < ApplicationRecord
  belongs_to :topic
  has_many :user_favorites
  has_many :users, through: :user_favorites
end
