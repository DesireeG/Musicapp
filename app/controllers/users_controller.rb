class UsersController < ApplicationController
  def index
  end

  def new
  	@user = User.new
  end

  def show
    @songs = MySoundCloud.songs
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		session[:user_id] = @user.id
  		redirect_to root_path, notice: "New account created!"
  	else
  		render :new
  	end
  end


  def edit
  end

  private

  def user_params
  	params.require(:user).permit(:username, :email, :lname, :fname, :password, :password_confirmation, :current_password, :image)
  end

end
