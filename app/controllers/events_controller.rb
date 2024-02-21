class EventsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @end_date = @event.end_date
  end

  def new 
    @event = Event.new
  end

  def create
    puts "%"*50
    puts "Lorsque je soumet la création de l'event :"
    puts params    
    puts event_params[:start_date]    
    
    puts "%"*50
    @event = Event.new(title:event_params[:title],description:event_params[:description],start_date:event_params[:start_date],duration:event_params[:duration],price:event_params[:price],location:event_params[:location],admin:current_user)
    puts @event
    if @event.save
      flash[:success] = "L'event a créé !"
      redirect_to @event
    else
      flash[:danger] = "echec de création d'event !"
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path
  end

  private
  
  def event_params
    event_params = params.require(:event).permit(:title,:description,:start_date,:duration,:price,:location)
  end
end
