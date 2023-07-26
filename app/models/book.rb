class Book < ApplicationRecord
    has_and_belongs_to_many :authors
    has_many :loans
    belongs_to :publisher

    validates :title, presence: true
    validates :publisher_id, presence: true
    validates :amount, presence: true
    validates :isbn, presence: true
end
