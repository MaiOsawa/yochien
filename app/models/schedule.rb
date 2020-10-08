class Schedule < ApplicationRecord
    
    validates :year, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 2020 } 
    validates :month, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 12 }
    validates :day, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 31 }
    validates :place, presence: true
    
end
