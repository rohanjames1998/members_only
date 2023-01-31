class PostsController < ApplicationController
  before_action :user_signed_in?, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to root_url
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
