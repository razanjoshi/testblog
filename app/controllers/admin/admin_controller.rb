class Admin::AdminController < ApplicationController

  def show
    @user_count = User.count
    @post_count = Post.count
    render :template => '/admin/show'
  end

end