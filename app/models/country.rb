class Country < ApplicationRecord
    belongs_to :language
    has_many :users   
    has_many :contacts
        
end
