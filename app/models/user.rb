class User < ApplicationRecord
  has_secure_password
  
  has_many :characters
  has_many :items
  
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  
end
