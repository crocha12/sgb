class Book < ApplicationRecord
    has_many :authors, through: :author_books
    has_many :loans
    belongs_to :publisher
end
