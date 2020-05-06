# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :find_current_user

  private

  def find_current_user
    @current_user = User.find(session['warden.user.user.key']&.first)
  end
end
