class Brain::SessionsController < ApplicationController

  skip_before_action :authenticate_user, only: [:new, :create]

   def new
   end

   def create
     user = User.find_by(username: params[:username])
     if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect_to brain_user_path(user)
     else
       flash[:message] = 'Incorrect Login'
       redirect_to new_brain_session
     end
   end

   def destroy
     session.clear
     redirect_to new_brain_session
   end

end
