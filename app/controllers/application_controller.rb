class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_out_path_for(resource_or_scope)
    # if session[:current_user] == 'nil'
      new_user_session_path
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :phone_number, :full_name, :role])
  end
end


