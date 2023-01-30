class PostsController < ApplicationController
  before_action :user_signed_in?, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_url
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def post_params
    params.permit(:content)
  end
end
