class UsersController < ApplicationController
  before_filter :save_login_state, :only => [:new, :create]

  def index

  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You signed up successfully"
    else
      flash[:notice] = "Form is invalid"
    end

    redirect_to admin_path
  end

  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
  end

end
