class ApplicationController < ActionController::Base
 layout :layout_by_controller
 protected
   def layout_by_controller
      if devise_controller? 
        "admin_authentication"
      else
        "admin" 
      end
   end
end
