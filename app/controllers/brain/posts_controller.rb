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
    @author_id = Post.find(params[:id]).user_id
    @new_comment = Comment.new
    @comments = @post.sorted_comments
    @current_user = session[:user_id]
  end

  def new
    @post = Post.new
    @user = User.find(params[:user_id])
    @content_types = ["Article", "Book", "Podcast",   "Video"]
  end

  def create
    @user = User.find(params[:user_id])
    @post = Post.new(post_params)
    @user.posts << @post
    if @post.save
      @user.save
      redirect_to brain_user_profile_path(@user)
    else
      render :new
    end
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :content_link, :content_type)
  end
end
