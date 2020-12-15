class SchedulesController < UserController
    
    before_action :set_schedule, only: [:show, :edit, :update, :destroy]

    def index
        @schedules = Schedule.where(user_id: session[:user_id])
        @schedules = Schedule.order(date: :asc)
    end
    
    def show
         @schedule = Schedule.find(params[:id])
    end
    
    def new
        @schedule = Schedule.new
    end
    
    def create
        schedule_params = params.require(:schedule).permit(:date, :place)
        schedule_params[:user_id] = session[:user_id]
        @schedule = Schedule.new(schedule_params)
        @schedule.date = DateTime.parse("#{@schedule.year}/#{@schedule.month}/#{@schedule.day}")
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
        schedule_params = params.require(:schedule).permit(:date, :place)
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
        redirect_to schedules_path
    end
    
    private
    
    def set_schedule
        @schedule = Schedule.where(user_id: session[:user_id]).find(params[:id])
    end
end