class ApplicationController < ActionController::Base
  #TODO move contnent to proper controller
  before_action :authenticate_admin!
 private
end
