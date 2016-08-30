class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :all_messengers, :all_expositions

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def all_messengers
    @all_messengers ||= Messenger.all
  end

  def all_expositions
    @all_expositions ||= Exposition.all
  end

  private
  def set_locale
    I18n.locale = session[:locale] || params[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end
end
