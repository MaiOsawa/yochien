class SchedulesController < ApplicationController
    
    before_action :set_schedule, only: [:show, :edit, :update, :destroy]
    before_action :redirect_to_schedules, only: [:new, :create]
    
    def index
        @schedules = Schedule.all
    end
    
    def new
        @schedule = Schedule.new
    end
    
    def create
        schedule_params = params.require(:schedule).permit(:year, :month, :day, :place)
        @schedule = Schedule.new(schedule_params)
        if @schedule.save
            flash[:notice] = "予定を1件登録しました！"
            redirect_to schedules_path
        else
            flash.now[:alert] = "登録に失敗しました。"
            render :new
        end
    end
    
    def edit
    end
    
    def update
        schedule_params = params.require(:schedule).permit(:year, :month, :day, :place)
        if @schedule.update(schedule_params)
            flash[:notice] = "予定を更新しました！"
            redirect_to schedules_path
        else 
            flash[:alert] = "予定の更新に失敗しました。"
        　　render :edit
        end

    end
    
    def destroy
        @schedule.destroy
        redirect_to schedule_path
    end
    
    private
    
    def set_schedule
        @schedule = Schedule.find(params[:id])
    end
    
    def redirect_to_schedules
        redirect_to schedule_path if session[:user_id].blank?
    end
    
end