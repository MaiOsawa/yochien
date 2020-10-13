class UsersController < ApplicationController
    
    def new
        @User = User.new
    end
    
    def create
        user_params = params.require(:user).permit(:name, :email, :password, :password_confirmation)
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "登録しました！"
            redirect_to signin_path
        else
            flash.now[:aleart] = "登録に失敗しました"
            render "new"
        end
    end
    
end
