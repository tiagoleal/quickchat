class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  include CanCan::ControllerAdditions

  #when is access local is denied, redirect for root
  rescue_from CanCan::AccessDenied do |exception|
    #json send in header
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url, notice: exception.message }
    end
  end
end

