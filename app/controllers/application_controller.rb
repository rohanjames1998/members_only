class ApplicationController < ActionController::Base
  before_action :user_params, if: :devise_controller?

  private

  def user_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
