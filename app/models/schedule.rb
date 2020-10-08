class Schedule < ApplicationRecord
    
    validates :year, presence: true, numericality: { only_integer: true, greater_than: 2020 } 
    validates :month, presence: true, numericality: { only_integer: true, greater_than: 1, less_than: 13 }
    validates :day, presence: true, numericality: { only_integer: true, greater_than: 1, less_than: 32 }
    validates :place, presence: true
    
end
