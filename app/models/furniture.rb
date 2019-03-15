class Furniture < ApplicationRecord
    
    has_many :parts
    has_many :locations, through: :parts
    
    has_one_attached :image
    
end
