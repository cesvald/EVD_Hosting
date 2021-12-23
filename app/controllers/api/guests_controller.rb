class Api::GuestsController < Api::BaseController
  def by_email_in_modality
    is_there = Modality.select('guests.email').where('LOWER(modalities.name) like ?', "#{params[:course]}%").joins(spaces: [participants: :guest]).where('guests.email ILIKE ?', params[:student_email].downcase).any?
    respond_to do |format|
      format.json { render json:  [is_there, request.referrer] }
    end
  end
end
