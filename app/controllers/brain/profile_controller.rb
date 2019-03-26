class Brain::ProfileController < ApplicationController

  before_action :set_user, only: [:show, :edit]

  def login #renders login form
    @profile = User.new
    @categories = ['Technology', 'Retail', 'Consulting', 'Medicine', 'Real Estate', 'Higher Education'] # or should this be more niche? (all categories within tech)
  end

  def create #creates new account
    @profile = User.new(user_params)
    if @profile.save
      redirect_to brain_user_path(@profile)
    else
      render :login
    end
  end

  def show
    #shows the user profile
  end

  def edit
    @categories = ['Technology', 'Retail', 'Consulting', 'Medicine', 'Real Estate', 'Higher Education'] # or should this be more niche? (all categories within tech)
    @posts = @user.posts
   #gives user ability to edit their account info, delete posts 
  end

  def update
    if @user.update(user_params)
      redirect_to brain_user_path(@user)
    else
      render :edit
    end
  end


private

def set_user
  @user = User.find(params[:user_id])
end

def user_params
  params.require(:user).permit(:name, :city, :email, :professional_industry, :about_me, :photo_url, :category_name)
end


end
