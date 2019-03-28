class Brain::UsersController < ApplicationController

  before_action :set_user, only: [:show]
  skip_before_action :authenticate_user, only: [:new, :create]

  def show
    @influencer_hash = @user.find_influencers
    @influencer_count = @user.user_influencer_relationships.count
    @influencing_count =@user.influence_num
  end

  def new
    @user = User.new
    @categories = ['Technology', 'Retail', 'Consulting', 'Medicine', 'Real Estate', 'Higher Education'] # or should this be more niche? (all categories within tech)
  end

  def create
    @user = User.new(user_params)
   if @user.valid?
     @user.save
     session[:user_id] = @user.id
     redirect_to brain_user_profile_path(@user)
   else
     flash[:message] = @user.errors.full_messages
     redirect_to new_brain_user_path
   end
  end


  def discover
    @posts = Post.all


    #lists users with categories which were selected by user during account creation
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :photo_url, :professional_industry, :username, :password, :password_confirmation)
  end

end
