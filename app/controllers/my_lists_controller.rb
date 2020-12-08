class MyListsController < ApplicationController
    
    def create
        @item = FacilityUser.new(user_id: session[:user_id], facility_id: params[:facility_id] )
        if @item.save
            flash[:success] = "カテゴリーを登録しました"
            redirect_to my_facilities_path
        else
            flash[:danger] = "カテゴリーが登録できませんでした"
            redirect_to my_facilities_path
        end
    end
    
        private
        
        def my_list_params
            params.require(:facility).permit(:name, :address, :tel, :lunch, :pre, :memo)        
        end    
end

