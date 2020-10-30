class SessionController < UserController
    
    before_action :check_loggedin, only: [:destroy]
    
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
    
end
