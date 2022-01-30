class Api::ModalitiesController < Api::BaseController
  def price
    event = Event.find(params[:event_id])
    modality_name = "#{params[:country]} #{params[:course]}"
    modality_name.strip!
    p "MODALITY NAME"
    p modality_name
    modality = event.modalities.where('LOWER(modalities.name) like ?', "#{modality_name.downcase}%").first
    space = modality.spaces.joins(:place).where('LOWER(places.name) = ?', params[:place].downcase).first
    p "THE SPACE AMOUNT IS"
    p space.amount
    amount = space.amount
    if params[:material] == '1'
      space_material = modality.spaces.joins(:place).where('places.name = ?', 'MATERIAL').first
      amount = amount + space_material.amount
    end
    if params[:cuota] == '1'
      space_inscripcion = modality.spaces.joins(:place).where('places.name = ?', 'Inscripción').first
      amount = amount + space_inscripcion.amount
    end
    respond_to do |format|
      format.json { render json:  ActionController::Base.helpers.number_with_precision(amount, precision: 2, separator: ".") }
    end
  end
end
