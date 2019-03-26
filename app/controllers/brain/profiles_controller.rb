class Brain::ProfilesController < ApplicationController

  def login #renders login form
    @profile = User.new
    @categories = ['Technology', 'Retail', 'Consulting', 'Medicine', 'Real Estate', 'Higher Education'] # or should this be more niche? (all categories within tech)
  end

  def create #creates new account
    @profile = User.new(user_params)
    if @profile.save
      redirect_to brain_user(@profile)
    else
      render :login
    end
  end

  def show  #shows user profile
    #useful for user looking at their own profile, or others looking at their account
  end

#need routes to edit/update for user's profile. note they cannot update posts 

private

def user_params
  params.require(:user).permit(:name, :city, :email, :professional_industry, :about_me, :photo_url, :category_name)
end


end
