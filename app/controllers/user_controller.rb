class UserController < ApplicationController
    
    before_action :check_loggedin
    
    def check_loggedin
        redirect_to signin_path if session[:user_id].blank?
    end  
    
end