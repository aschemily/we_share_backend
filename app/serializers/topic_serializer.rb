class TopicSerializer < ActiveModel::Serializer
  attributes :topic_name
  has_many :favorites

end
