class User < ApplicationRecord
	has_secure_password

	belongs_to :country
	belongs_to :bloodtype
	has_many :phones
	has_many :contacts
	has_many :travels

	validates :name, presence: true, uniqueness: true 
	validates :lastname, presence: true, uniqueness: true   
	validates :rut, presence: true, uniqueness: true, length: { maximum: 10 },
	format: {
		with: /^\d\.\d\d*\-(\d|k|K)$|\d{1,9}\-(\d|k|K)$/,
		multiline: true,
		message: :invalid
	}
	validates :email, presence: true, uniqueness: true,
			format: {
					with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i,
					message: :invalid
			}
	validates :password_digest, presence: true, length: { minimum: 6 }

end
