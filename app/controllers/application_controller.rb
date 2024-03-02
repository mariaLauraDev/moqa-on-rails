class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token

  rescue_from CanCan::AccessDenied, with: :access_denied

  protected
end
