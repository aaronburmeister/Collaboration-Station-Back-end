class User < ApplicationRecord
  has_many :images
  has_many :image_comments
  has_many :requests
  has_many :request_comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  protected
  
  def generate_jwt
    JWT.encode({ id: id,
                exp: 60.days.from_now.to_i },
                Rails.application.secrets.secret_key_base)
  end
end
