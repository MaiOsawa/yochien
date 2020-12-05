class MyListsController < ApplicationController
    
    def create
        @facility = current_facility
　　　　@mylist = @facility.mylist.build(my_list_params)
　　　　if @facility.save
　　　　    flash[:success] = "カテゴリーを登録しました"
　　　　    redirect_to my_facilities_path
　　　　else
　　　　    flash[:danger] = "カテゴリーが登録できませんでした"
　　　　    redirect_to my_facilities_path
    end

　　　  private
　　　  
　　　  def my_list_params
　　　      params.require(:facility).permit(:name, :address, :tel, :lunch, :pre, :memo)        
　　　  end    
end

