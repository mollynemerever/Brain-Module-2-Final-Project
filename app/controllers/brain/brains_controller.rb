class Brain::BrainsController < ApplicationController

  def create
  #  binding.pry
    @brain = Brain.create(user_id: params[:user_id], post_id: params[:post_id])
     redirect_to brain_user_post_path(params[:user_id], params[:post_id])
  end

end

#, )
