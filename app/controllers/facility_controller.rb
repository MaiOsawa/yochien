class FacilityController < ApplicationController
    
    def index
        @facilities = Facility.all
    end
    
    def show
        @facilities = Facility.all
    end
end
