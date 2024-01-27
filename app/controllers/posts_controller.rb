class PostsController < ApplicationController
  def index
    @posts = Post.includes(:author).where(author_id: params[:user_id])
    @user = User.includes(:posts).find(params[:user_id])
  end

  def show
    @post = Post.includes(:author).find_by(author_id: params[:user_id], id: params[:id])

    if @post
      @user = @post.author
      @comments = @post.comments
    else
      flash[:alert] = 'Post not found'
      redirect_to user_posts_path(params[:user_id])
    end
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author_id = current_user.id
    @post.likes_counter = 0
    @post.comments_counter = 0
    if @post.save
      @user = User.find(params[:user_id])
      redirect_to user_post_path(@user, @post), notice: 'Post was successfully created.'
    else

      pp @post.errors
      pp @post.errors.full_messages
      @user = User.find(params[:user_id])
      render 'new'
    end
  end

  def destroy
    @post = Post.find_by(author_id: params[:user_id], id: params[:id])
    @post.destroy

    if @post.destroyed?
      flash[:notice] = 'Post deleted!'
      redirect_to user_posts_path(@post.author)
    else
      flash.now[:errors] = 'Unable to delete post!'
      redirect_to user_post_path(@post.author, @post)
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
