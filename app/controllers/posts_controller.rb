class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index; end

  def show
    @post = Post.find params[:id]
  end

  def create
    @post = Post.new(message: params[:msg])
    @post.save

    redirect_to '/posts'
  end
end
