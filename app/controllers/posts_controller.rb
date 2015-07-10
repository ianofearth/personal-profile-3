class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @user = current_user
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:notice] = @post.title + ' has been added.'
      redirect_to posts_path
    else
      render :new
    end
  end

private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
