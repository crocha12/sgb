class Loan < ApplicationRecord
    belongs_to :client
    has_one :book
end
