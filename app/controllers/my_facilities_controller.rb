class MyFacilitiesController < ApplicationController

    before_action :set_facility, only: [:show, :edit, :update, :destroy]

    def index
        @user = User.find(session[:user_id])
        @myfacilities = @user.my_facilities #他人が登録したぶん
        @facilities = @user.facilities #自分が登録したぶん
    end
    
    def show
    end

    def new
        @facility = Facility.new
    end
    
    def create
        facility_params = params.require(:facility).permit(:name, :address, :tel, :lunch, :pre, :memo)
        facility_params[:user_id] = session[:user_id]
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
        @facility = Facility.where(user_id: session[:user_id]).find(params[:id])
    end

end