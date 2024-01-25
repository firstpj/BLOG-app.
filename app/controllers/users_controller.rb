class UsersController < ApplicationController
  def index
    # Assuming you want to display all users
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
