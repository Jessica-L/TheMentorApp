class Users::RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters
   def update
   self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)


    # custom logic
    if params[:user][:current_password].present?
      result = resource.update_with_password(params[resource_name])
    else
      result = resource.update_without_password(params[resource_name])
    end
    redirect_to '/profile'
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username, :about_me, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
     u.permit(:username, :about_me, :email, :password, :password_confirmation)
    end
  end

end
