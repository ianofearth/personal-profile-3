class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @user = User.find(@post.user_id)
    @comment = @post.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment added to " + @post.title + "."

    else
      render :new
    end
    respond_to do |format|
      format.html { redirect_to user_post_path(@user, @post) }
      format.js
    end
  end

private
  def comment_params
    params.require(:comment).permit(:title, :body)
  end
end
