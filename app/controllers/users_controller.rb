class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  protect_from_forgery prepend: true, with: :exception

  def main
  end

  def login
    @users = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

end
