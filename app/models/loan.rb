class Loan < ApplicationRecord
    belongs_to :client
    belongs_to :book

    validates :book_id, presence: true
    validates :client_id, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
end
