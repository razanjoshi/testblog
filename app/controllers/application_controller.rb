class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_admin_user
    raise ActionController::RoutingError, "404 for admin pages" unless (current_user && current_user.is_admin?) || check_salesforce
  end
  
end
