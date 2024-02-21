class AttendancesController < ApplicationController
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
end
