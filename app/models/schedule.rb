class Schedule < ApplicationRecord
    
    validates :year, presence: true
    validates :month, presence: true
    validates :day, presence: true
    validates :place, presence: true
    
end
