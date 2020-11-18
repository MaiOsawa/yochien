class MyFacilityController < ApplicationController
    
    def index
        @myfacilities = MyFacility.all
    end
    
    def show
        @myfacilitiy = MyFacility.find(params[:id])
    end
    
end
