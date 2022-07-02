class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @posts = Post.all
  end
end
