class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email)}
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email)}
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :about_me, :email, :password, :password_confirmation, :current_password)}
  end
end
