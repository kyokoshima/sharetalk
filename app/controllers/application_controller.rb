class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    timelines_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def layout_by_resource
    if devise_controller?
      'no_sidebar'
    else
      'application'
    end
  end

 protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
