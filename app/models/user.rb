class User < ApplicationRecord
    belongs_to :country
    has_one :bloodtype
    has_many :phones
    has_many :contacts
    has_many :travels

    validates :name, presence: true 
    validates :s_name, presence: true  
    validates :lastname, presence: true  
    validates :s_lastname, presence: true  
    validates :rut, presence: true  
    validates :email, presence: true  
    validates :password, presence: true  
    validates :bloodtype_id, presence: true  
    validates :country_id, presence: true  
end
