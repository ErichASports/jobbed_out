class SessionController < ApplicationController

	def new 

	end

	def create 
		if login(params[:email], params[:password])
			redirect_back_or_to '/'
		else 
			render :new
		end
	end

	def destroy
		logout 
		redirect_to '/'

	end

end
