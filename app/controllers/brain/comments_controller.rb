class Brain::CommentsController < ApplicationController

  def create
    
    @comment = Comment.new(user_id: session[:user_id], post_id: params[:post_id], text: params[:comment][:text])
    if @comment.valid?
      @comment.save
      redirect_to brain_user_post_path(session[:user_id], params[:post_id])
    else
      redirect_to brain_user_post_path(session[:user_id], params[:post_id])
    end
  end

end
