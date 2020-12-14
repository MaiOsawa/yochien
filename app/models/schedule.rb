class Schedule < ApplicationRecord
    
    belongs_to :user
    validates :place, presence: true

end
