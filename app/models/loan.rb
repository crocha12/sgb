class Loan < ApplicationRecord
    belongs_to :client
    belongs_to :book
end
