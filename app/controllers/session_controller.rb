class SessionController < ApplicationController

    def new
    end
    
    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            flash[:notice] = "ログインしました"
            redirect_to 
        else
            flash[:aleart] = "ログインに失敗しました"
            render "new"
        end
    end
    
    def destroy
        session[:user_id] = nil
        redirect_to signin_path
    end
    
    private
    
    def redirect_to 
    end
    
end
