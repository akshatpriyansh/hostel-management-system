class AdminController < ApplicationController
  before_action :authenticate_user
  def index
    @user_index_details = {}
    user_id = session[:user_id]
    @user_index_details[:building_count] = Building.where(user_id: user_id).count
    @user_index_details[:hosteller_count] = Hosteller.where(created_by: user_id).count
  end
end
