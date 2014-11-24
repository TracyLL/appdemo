class SessionsController < ApplicationController
	#sign in
	def new

	end

	#sign
	
  
  
  
	def create
	    user = User.find_by(email: params[:session][:email].downcase)
	    if user && user.authenticate(params[:session][:password])
	      sign_in user
	      redirect_back_or user
	    else
	      flash.now[:error] = 'Invalid email/password combination'
	      render 'new'
	    end
	  end

  
	
	#sign out
	def destroy
	    sign_out
	    redirect_to root_path
	end

	def current_user?(user)
	    user == current_user
	end
end
