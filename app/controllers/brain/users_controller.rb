class Brain::UsersController < ApplicationController

  before_action :set_user, only: [:show]
  skip_before_action :authenticate_user, only: [:new, :create]

  def show
    @influencer_hash = @user.find_influencers
    @influencer_count = @user.user_influencer_relationships.count
    @influencing_count =@user.influence_num
    @new_comment = Comment.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
   if @user.valid?
     @user.save
     session[:user_id] = @user.id
     redirect_to brain_user_path(@user.id)
   else
     flash[:message] = @user.errors.full_messages
     redirect_to new_brain_user_path
   end
  end


  def discover
    @new_comment = Comment.new
    @content_types = ["Article", "Book", "Podcast",   "Video"]
    @posts = Post.search(params[:search])
      if @posts == nil
        @searched = false
      elsif params[:search] && @posts.length >= 1
        @searched = true
      end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :photo_url, :about_me, :username, :password, :password_confirmation, :search)
  end

end
