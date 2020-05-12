class Image < ApplicationRecord
  belongs_to :user
  has_many :image_comments
end
