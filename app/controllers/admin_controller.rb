class AdminController < ApplicationController
  before_action :authenticate_user
  def index
    @user_index_details = {}
    user_id = session[:user_id]
    @user_index_details[:buildings_count] = Building.where(user_id: user_id).count
  end
end
