class Book < ApplicationRecord
    validates :title, presence: true
    validates :isbn, presence: true
    validates :year, presence: true
    validates :author, presence: true
    validates :availibility, presence: true

    has_many :users, through: :checkouts
end
