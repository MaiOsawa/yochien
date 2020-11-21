class Facility < ApplicationRecord
    
   validates :name, presence: true 
   validates :address, presence: true 
   validates :tel, presence: true 
   validates :lunch, presence: true 
   validates :pre, presence: true 
   validates :memo, presence: true 
   
end
