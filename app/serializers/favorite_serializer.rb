class FavoriteSerializer < ActiveModel::Serializer
  attributes :title, :image, :details
  belongs_to :topic
  has_many :user_favorites
  has_many :users, through: :user_favorites
end
