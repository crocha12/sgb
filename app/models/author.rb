class Author < ApplicationRecord
    has_and_belongs_to_many :books

    validates :name, presence: true
    validates :birth_date, presence: true
    validates :country, presence: true
end
