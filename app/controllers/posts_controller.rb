class PostsController < ApplicationController
  def show
    @user = current_user
    @post = Post.find(params[:id])
  end
  def new
    @user = current_user
    @post = @user.posts.new
  end

  def create
    @user = current_user
    @post = @user.posts.new(params_post)
    if @post.save
      redirect_to root_path
      else render :new
    end
  end

  def edit
    @user = current_user
    @post = @user.posts.find(params[:id])
  end

  def update
    @user = current_user
    @post = @user.posts.find(params[:id])
    if @post.update(params_post)
      redirect_to root_path
    else render :edit
    end
  end

  def destroy
    @user = current_user
    @post = @user.posts.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  private
  def params_post
    params.require(:post).permit(:title, :content)
  end
end
