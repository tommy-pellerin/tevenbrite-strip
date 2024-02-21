module EventsHelper
  def is_admin?(event)
    @event = event
    if current_user != nil && current_user.id == event.admin.id
      true
    end
  end

  def participant?
    
  end
end
