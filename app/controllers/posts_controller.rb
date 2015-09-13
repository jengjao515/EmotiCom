class PostsController < ApplicationController
	def new
		@post = Post.new
		@user = User.where(id: current_user.id).first
		@emotions = Emotion.all
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
	end

  private
  def post_params
    params.require(:post).permit(:content, :user_id, :rating, :description)
  end

end

