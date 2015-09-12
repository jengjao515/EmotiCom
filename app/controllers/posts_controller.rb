class PostsController < ApplicationController
	def new
		@post = Post.new
		@user = User.where(id: current_user.id).first
	end

	def create
		@post = Post.create(post_params)
		@post.user_id = current_user.id
	end

  private
  def post_params
    params.require(:post).permit(:content, :user_id)
  end
end
