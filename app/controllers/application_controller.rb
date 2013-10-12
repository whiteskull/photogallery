class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_current_user
  before_filter :get_settings

  private

  def get_settings
    @setting = Setting.first
  end

  def set_current_user
    Album.current_user = current_user
    Video.current_user = current_user
    Setting.current_user = current_user
  end
end
