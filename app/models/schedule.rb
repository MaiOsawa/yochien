class Schedule < ApplicationRecord
    
    belongs_to :user
    
    validates :year, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 2020 } 
    validates :month, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 12 }
    validates :day, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 31 }
    validates :place, presence: true
    validate :date_valid
    
    private
    
    def date_valid
        begin
            d = Date.new(year, month, day)
                if d < Date.today
                    errors.add(:base, "過去の日付です")
                end
        rescue
            errors.add(:base, "不正な日付です")
        end
    end
    
end

