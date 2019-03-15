class Location < ApplicationRecord
    
    has_many :parts
    has_many :furniture, through: :parts
    
end
