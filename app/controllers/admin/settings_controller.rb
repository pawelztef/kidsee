class Admin::SettingsController < ApplicationController
  before_action :set_title

  def index
    @setting = Setting.instance
  end

  def update
    @setting = Setting.update(settings_params)
    redirect_to admin_settings_path
  end

  private
  def set_title
    @title = "Settings"
  end
  def settings_params
    params.require(:setting).permit(:company_name, :catch_phrase)
  end
end
