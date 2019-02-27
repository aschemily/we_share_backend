class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  belongs_to :favorite, optional: true
end
