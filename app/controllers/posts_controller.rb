class PostsController < ApplicationController

  def index
    @posts = Post.all
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @user = current_user
    @post = @user.posts.new(post_params)
    if @post.save
      flash[:notice] = @post.title + ' has been added.'
      redirect_to user_posts_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = @post.title + ' has been updated.'
      redirect_to user_post_path(@user, @post)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = @post.title + " successfully deleted!"

    redirect_to user_posts_path(@user, @post)
  end

private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
