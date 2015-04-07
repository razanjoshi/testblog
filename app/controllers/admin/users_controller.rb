class Admin::UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	@user.save
  	if @user.save
  		flash[:notice] = "You're Onboard Now !!! Welcome to TeskaBaje App."
  	else
  		flash[:notice] = "You're Screwed"
  	end
  	redirect_to admin_users_path
  end

  def show
  end

  def destroy
  	 user = User.find params["id"]
  	 user.delete
  	 redirect_to admin_users_path
  end

  def pose
  end
  
  # match '/', :to => 'admin#show', :as => 'show'
end
