class AttendancesController < ApplicationController
  before_action :authenticate_user, only: [:new]

  def index
    @event = Event.find(params[:event_id])    
    @attendance_participants = @event.users
  end
  
  def new
    @event = Event.find(params[:event_id])
    @attendance = Attendance.new(user:current_user,event:@event)  

  end
  
  def create
    puts "$"*50
    puts params
    puts attendance_params
    puts "$"*50
  end

  private
  
  def attendance_params
    attendance_params = params.require(:attendance).permit(:user,:event)
  end

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_user_session_path
    end
  end
end
