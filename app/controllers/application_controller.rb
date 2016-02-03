class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user

  protected

  def authenticate_user
  	respond_to do |format|
	  	format.html { redirect_to new_session_path(User.new) if !user_signed_in? }
	  	format.json { render json: {success: false, message: "Please sign in"} if !user_signed_in? }
	  end
  end

end
