class Admin::PostsController < ApplicationController
  def index
  	@posts = Post.all
  end
   match '/', :to => 'admin#show', :as => 'show'
end