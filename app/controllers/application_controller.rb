class ApplicationController < ActionController::Base

  def require_login
    redirect_to root_path and return unless current_user
  end

end
