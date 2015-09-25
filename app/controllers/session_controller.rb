class SessionController < ApplicationController

	def new 

	end

	def create 
		user = login(params[:email], params[:password]), params[:remember_me])
		if user 
			redirect_back_or_to root_url, :notice => "Logged In!"
		else 
			render :new
		end
	end

	def destroy
		logout 
		redirect_to '/' :notice => "logged out"

	end

end
