require "clerk/authenticatable"

class ApplicationController < ActionController::Base
  include Clerk::Authenticatable

  before_action :require_clerk_session

  private
  def require_clerk_session
    clerk_user&.dig('private_metadata')
    unless clerk_user_signed_in?
      return redirect_to "#{ENV.fetch('CLERK_SIGN_IN_URL', Rails.application.credentials.clerk_sign_in_url)}?redirect_url=#{request.original_url}",
                         allow_other_host: true
    end
  end
end
