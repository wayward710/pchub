class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_action :authenticate_user!

  before_filter :update_sanitized_params, if: :devise_controller?
  def update_sanitized_params
      devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name,:email, 
    	  :email_confirmation, :password,:password_confirmation,:nickname, 
    	  :city, :state_or_province, :country, :profile_link, :additional_information)}
      devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:name)}   
  end

end
