class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Render mobile or desktop depending on User-Agent for these actions.
  # before_filter :check_for_mobile

  # Always render mobile versions for these, regardless of User-Agent.
  # before_filter :prepare_for_mobile
  helper_method :current_user, :all_messengers, :all_expositions, :mobile_device?

  before_action :client_form

  def client_form
    @client = Client.new
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def all_messengers
    @all_messengers ||= Messenger.includes(:topics).where.not(topics: { messenger_id: nil })
  end

  def all_expositions
    @all_expositions ||= Exposition.all
  end

  def mobile_device?
    if session[:mobile_override]
      session[:mobile_override] == '1'
    else
      # Season this regexp to taste. I prefer to treat iPad as non-mobile.
      (request.user_agent =~ /(iPhone|iPod|Android|webOS|Mobile)/) && (request.user_agent !~ /iPad/)
    end
  end

  def check_for_mobile
    session[:mobile_override] = params[:mobile] if params[:mobile]
    prepare_for_mobile if mobile_device?
  end

  def prepare_for_mobile
    prepend_view_path Rails.root + 'app' + 'views_mobile'
  end

  private
  def set_locale
    I18n.locale = session[:locale] || params[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end
end
