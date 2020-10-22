class SessionController < ApplicationController
    
    before_action :redirect_to_schedules, only: [:new, :create]

    def new
    end
    
    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            flash[:notice] = "ログインしました"
            session[:user_id] = user.id
            redirect_to schedules_path
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
    
    def redirect_to_schedules
        redirect_to schedules_path if session[:user_id].present?
    end
    
end
