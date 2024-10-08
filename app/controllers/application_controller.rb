class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = %i[first_name last_name username gender age username email password password_confirmation
                     remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: %i[username password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
