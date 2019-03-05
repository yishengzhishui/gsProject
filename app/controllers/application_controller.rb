class ApplicationController < ActionController::Base

  def admin_required
    unless current_user.admin?
      redirect_to "/", alert: "You are not admin."
    end
  end
end
