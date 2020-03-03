class UsersController < ApplicationController

  def main
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
