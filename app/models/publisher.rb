class Publisher < ApplicationRecord
  has_many :books
  validates :pub_name, presence: true
end
