class Admin::AdminController < ApplicationController
    before_filter :require_admin_user
  def show
    @user_count = User.count
    @post_count = Post.count
    render :template => '/admin/show'
  end

end