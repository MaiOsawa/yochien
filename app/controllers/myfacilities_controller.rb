class MyfacilitiesController < ApplicationController
    
    def index
        @myfacilities = Myfacility.all
    end
    
    def show
        @myfacility = Myfacility.find(params[:id])
    end
    
end