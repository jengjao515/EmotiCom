class PostsController < ApplicationController
	def new
		@user = User.where(id: current_user.id).first
	end
end
