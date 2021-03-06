class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_user
  before_action :set_new_book

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  private

  def set_user
    @user = current_user
  end

  def set_new_book
    @new_book = Book.new
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
