class UserFavoritesSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :favorite_id
  belongs_to :user
  belongs_to :favorite
end
