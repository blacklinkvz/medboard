class Post < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :diseases
    has_and_belongs_to_many :medicaments

end
