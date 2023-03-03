class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_one :user_profile
  has_many :posts
  has_many :wines, through: :posts
end
