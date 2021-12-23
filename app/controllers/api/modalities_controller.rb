class Api::ModalitiesController < Api::BaseController
  def price
    event = Event.find(params[:event_id])
    if params[:country] == 'Argentina'
    elsif params[:country] == 'Venezuela'
    else
    end
  end
end
