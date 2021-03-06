class Employee < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  has_secure_password
  has_many :books
end
