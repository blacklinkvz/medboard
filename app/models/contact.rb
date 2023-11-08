class Contact < ApplicationRecord
    belongs_to :country
    has_many :phones
    belongs_to :user
end
