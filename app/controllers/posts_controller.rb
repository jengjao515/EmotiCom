class PostsController < ApplicationController
	def new
		@post = Post.new
		@user = User.where(id: current_user.id).first
		@emotions = Emotion.all
	end

	def create
		@user = User.where(id: current_user.id).first
		@post = Post.new(post_params)
		@post.user_id = @user.id
		if @post && @post.save
			redirect_to @user
		else
			render 'new'
		end
	end

  private
  def post_params
    params.require(:post).permit(:content, :user_id, :rating, :description)
  end

end

