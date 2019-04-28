class CaregiversController < ApplicationController
  before_action :authenticate_caregiver!
  def index
  end
end
