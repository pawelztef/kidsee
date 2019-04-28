class ApplicationController < ActionController::Base
 layout :layout_by_controller
 protected
   def layout_by_controller
      if devise_controller? && resource_name == :admin
        "admin_authentication"
      elsif devise_controller? && resource_name == :caregiver
        "front_authentication" 
      else 
        "admin"
      end
   end
end
