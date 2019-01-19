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
      flash[:success] = "You signed up successfully. Login to continue."
      redirect_sucess

    else
      flash[:error] = "Invalid Form Data! Please fill the form correctly."
      redirect_failure
    end

  end

  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
  end

  def redirect_sucess
    redirect_to home_path
  end

  def redirect_failure
    redirect_to signup_path
  end
end
