def create
  @comment = Comment.new(comment_params)
  @post = Post.find(params[:post_id])
  @comment.post = @post
  @comment.user = current_user
  
  if @comment.save
    redirect_to user_post_path(@post.user, @post), notice: 'Comment created!'
  else
    flash.now[:errors] = 'Invalid comment!'
    render :new
  end
end
