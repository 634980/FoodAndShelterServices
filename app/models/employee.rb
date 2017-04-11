class Employee < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { maximum: 50 }
  validates :contact, presence: true, length: { maximum: 10 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }
  validates :username, presence: true, length: { maximum: 50 }
  
  
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  
end
