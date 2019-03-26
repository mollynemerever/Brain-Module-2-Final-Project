class Brain::PostsController < ApplicationController
  before_action :set_post, only: [:destroy, :show]

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def destroy
    @user = User.find(params[:user_id])
    @post.destroy
    redirect_to brain_user_profile_edit_path(@user)
  end

  def show

  end

  private
  def set_post
    @post = Post.find(params[:id])
  end
end
