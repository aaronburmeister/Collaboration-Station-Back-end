class User < ApplicationRecord
  acts_as_token_authenticatable
  has_many :images
  has_many :image_comments
  has_many :requests
  has_many :request_comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
