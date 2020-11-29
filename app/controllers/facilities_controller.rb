class FacilitiesController < ApplicationController
    
    def index
        @facilities = Facility.all
        @facilities = @facilities.where(name: params[:name]) if params[:name].present?
    end
    
    def show
        @facility = Facility.find(params[:id])
    end
end
