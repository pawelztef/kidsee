class Admin::SettingsController < ApplicationController
  before_action :set_title

  def edit
    @setting = Admin::Setting.instance
    byebug
  end

  def update
    @setting = Admin::Setting.update(settings_params)
    redirect_to admin_settings_edit_url
  end

  private
  def set_title
    @title = "Settings"
  end
  def settings_params
    params.require(:admin_setting).permit(:company_name)
  end
end
