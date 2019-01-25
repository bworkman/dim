class User < ApplicationRecord
  has_many :characters
  has_many :items
  
  validates :username, :email, presence: true
end
