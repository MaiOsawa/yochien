class User < ApplicationRecord
    has_secure_password
    
    has_many :schedules
    has_many :facilities
    has_many :facility_users
    has_many :my_facilities, source: :facility, through: :facility_users
    
    validates :name, presence: true, length: { maximum: 20 }
    validates :email, presence: true, uniqueness: true, length: { maximum: 40 }
end