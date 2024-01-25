# app/controllers/posts_controller.rb

class PostsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
  end
end
