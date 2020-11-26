class MyFacilitiesController < ApplicationController

    before_action :set_facility, only: [:show, :edit, :update, :destroy]

    def index
        @facilities = Facility.all
    end
    
    def show
    end

    def new
        @facility = Facility.new
    end
    
    def create
        facility_params = params.require(:facility).permit(:name, :address, :tel, :lunch, :pre, :memo)
        @facility = Facility.new(facility_params)
        if @facility.save
            flash[:notice] = "データを１件登録しました"
            redirect_to my_facilities_path
        else
            flash.now[:alert] = "登録に失敗しました"
            render :new
        end
    end
    
    def edit
    end
    
    def update
        facility_params = params.require(:facility).permit(:name, :address, :tel, :lunch, :pre, :memo)
        if @facility.update(facility_params)
            flash[:notice] = "更新しました"
            redirect_to my_facilities_path
        else
            flash.now[:alert] = "更新に失敗しました"
            render :edit
        end
    end
    
    def destroy
        if @facility.destroy
            flash[:notice] = "削除しました"
            redirect_to my_facilities_path
        end
    end

    def set_facility
        @facility = Facility.find(params[:id])
    end

end