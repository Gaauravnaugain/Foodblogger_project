class Post < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  has_many_attached :images
end
