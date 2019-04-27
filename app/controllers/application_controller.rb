class ApplicationController < ActionController::Base
  #TODO move contnent to proper controller
  before_action :authenticate_admin!
 private
  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      new_user_session_path
    elsif resource_or_scope == :admin
      new_admin_session_path
    end
  end 
end
