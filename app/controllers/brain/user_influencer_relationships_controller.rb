class Brain::UserInfluencerRelationshipsController < ApplicationController


  def create
    @uir = UserInfluencerRelationship.new(user_id: params[:user_id], influencer_id: params[:user][:influencer_id])
   if @uir.valid?
     @uir.save
     redirect_to brain_user_profile_path(params[:user][:influencer_id])
   else
     redirect_to brain_user_profile_path(params[:user][:influencer_id])
   end
  end

  def destroy
    @uir = UserInfluencerRelationship.where({user_id: params[:user_id], influencer_id: params[:user][:influencer_id]})[0]

    @uir.destroy

    redirect_to brain_user_profile_path(params[:user][:influencer_id])
  end
end
