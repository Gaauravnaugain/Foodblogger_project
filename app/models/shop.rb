class Shop < ApplicationRecord
 
  has_many :posts
  has_one_attached :profile_pic
end