class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #load_and_authorize_resource

  protect_from_forgery with: :exception
  def after_sign_out_path_for resource_scope
  	request.referrer
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end

end
