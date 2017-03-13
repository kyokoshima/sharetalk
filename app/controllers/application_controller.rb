class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
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
end
