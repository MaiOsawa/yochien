class Facility < ApplicationRecord
    
    belongs_to :user
    has_many :facility_users
    has_many :users, through: :facility_users

    validates :name, presence: true
    validates :address, presence: true
    validates :tel, presence: true
    validates :lunch, inclusion: {in: [true, false]}
    validates :pre, inclusion: {in: [true, false]}
    
end
