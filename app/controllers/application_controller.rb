# class ApplicationController < ActionController::Base
#   # Prevent CSRF attacks by raising an exception.
#   # For APIs, you may want to use :null_session instead.
#   protect_from_forgery with: :exception
# end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery unlees: -> { request.format.json? }

  def after_sign_in_path_for(resource)
    if resource.position == "teacher"
      "/teachers/#{resource.id}"
    else
      "/students/#{resource.id}"
    end
  end

  def after_sign_up_path_for(resource)
    if resource.position == "teacher"
      "/teachers/#{resource.id}"
    else
      "/students/#{resource.id}"
    end
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # def after_sign_in_path_for(resource)
  #   user_path(resource)
  # end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :school_name, :city, :position])
  end
end
