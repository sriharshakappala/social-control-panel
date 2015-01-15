class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  protected

  def after_sign_in_path_for(resource)
    dashboards_path
  end

  def twitter_init
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "VzDTU00oeY6X0YOQ0x1bf2dli"
      config.consumer_secret     = "BLn1nqFGFDXDKDac1yskkYm8iprx4IV3SUW2Dg80wK9kc1Ti5z"
      config.access_token        = "2976980166-s0rU6BKkoqYMSpDSjMpUzvuFmynfSiCOX4hdJdQ"
      config.access_token_secret = "k7iD5qJ031aIXYB38YjtZQwGG6KTJJo4HHa8I17P8I7kO"
    end
  end

end
