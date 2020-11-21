class FacilitiesController < ApplicationController

    def index
        @facilities = Facility.all
    end
    
    def show
        @facility = Facility.find(params[:id])
    end

    def new
        @facility = Facility.new
    end
    
    def create
        facility_params = params.require(:facility).permit(:name, :address, :tel, :lunch, :pre, :memo)
        @facility = Facility.new(facility_params)
        if @facility.save
            redirect_to facilities_path
        else
            render :new
        end
    end
    
    def edit
        @facility = Facility.find(params[:id])
    end

end