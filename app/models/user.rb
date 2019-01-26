require 'bcrypt'

class User < ApplicationRecord
  include BCrypt
  
  has_many :characters
  has_many :items
  
  validates :username, :email, presence: true
  
  def password
    @password ||= Password.new(password_hash)
  end
  
  def password-(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
  
end
