# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token, if: :json_request?

  private

  def find_current_user
    @current_user = User.find(session["warden.user.user.key"]&.first&.first)
  end

  def json_request?
    request.format.json?
  end
end
