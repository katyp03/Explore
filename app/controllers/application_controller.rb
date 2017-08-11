class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
 
  def after_sign_in_path_for(resource_or_scope)
    profile_path(current_user.username)
  end
  def after_sign_up_path_for(resource_or_scope)
    profile_path(current_user.username)
  end

  def after_update_path_for(resource_or_scope)
    profile_path(current_user.username)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fname, :lname, :email, :username, :location_id, :propic, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fname, :lname, :email, :username, :location_id, :propic, :password, :password_confirmation])
  end

end
