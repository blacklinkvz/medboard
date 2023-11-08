class Destiny < ApplicationRecord
    belongs_to :travel
    has_one :country
    
end
