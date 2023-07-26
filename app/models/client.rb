class Client < ApplicationRecord
    has_many :loans

    validates :name, presence: true
    validates :address, presence: true
    validates :phone, presence: true
end
