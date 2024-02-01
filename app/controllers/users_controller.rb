class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find_by_id(params[:id])
    if @user
      
    else
      flash[:alert] = 'User not found'
      redirect_to root_path
    end
  end
end