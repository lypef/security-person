class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :configure_permitted_parameters , if: :devise_controller?

  protect_from_forgery with: :exception


  protected

  	def configure_permitted_parameters
  		devise_parameter_sanitizer.for(:sign_up){|u| u.permit( :status , :direccion , :telefono ,  :apellidos, :name, :email, :password , :password_confirmation)}
  	    devise_parameter_sanitizer.for(:account_update){|u| u.permit(:email, :password, :password_confirmation, :name, :apellidos, :direccion, :telefono, :current_password, )}
    end
end