class SessionsController < ApplicationController

	def new
	end

	def create
		@user = User.find_by_email(params[:email])
  	if @user and @user.password == params[:password]
  		session[:user_id] = @user.id
  		redirect_to root_path, notice: "Successfully logged in!"
  	else
  		flash[:alert] = "There was a problem. Please try again."
  		redirect_to root_path
  	end
	end

	def delete
		session[:user_id] = nil
  	redirect_to root_path, notice: "You have been logged out."
	end

end
