class ApplicationController < ActionController::Base
rescue_from CanCan::AccessDenied do |exception|
respond_to do |format|
format.json { head :forbidden, content_type: ‘text/html’ }
format.html { redirect_to main_app.root_url, notice: "No estas autorizado como administrador" }
format.js { head :forbidden, content_type: ‘text/html’ }
end
end
protect_from_forgery with: :exception
before_action :configure_permitted_parameters, if: :devise_controller?
include ApplicationHelper
protected

def configure_permitted_parameters
devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :country])
devise_parameter_sanitizer.permit(:account_update, keys: [:name, :country])
end

end
