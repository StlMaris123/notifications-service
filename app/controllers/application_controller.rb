# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  skip_before_action :verify_authenticity_token, if: :json_request?
  
  before_action :find_current_user
  
  private

  def find_current_user
     @user = User.find_by_session_id(session&.id)
  end

  def json_request?
    request.format.json?
  end
end
