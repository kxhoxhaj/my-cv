class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  def after_sign_up_path_for(resource)
    new_review_path
  end

  def after_sign_in_path_for(resource)
    if resource.sign_in_count == 1
      new_review_path
    else
      super
    end
  end

  def not_found
    raise ActionController::RoutingError.new("Page not found")
  end
end
