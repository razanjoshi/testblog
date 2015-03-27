class PostsController < ApplicationController

  def index
    @user = current_user
    @posts = Post.all
  end

  def create
    @post = Post.new(params[:post])
    @post.user_id = current_user.id
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'The post was successfully posted.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @post = Post.new
  end

  def show
    @user = current_user
    @post = Post.find params[:id]
  end 

  def destroy
    @post = Post.find params[:id]
    @post.destroy
    redirect_to :back
  end

end
