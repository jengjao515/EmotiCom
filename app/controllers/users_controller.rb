class UsersController < ApplicationController
	def new
		@user = User.new
		user_info = params['twitter']['cachedUserProfile'] if params['twitter']
		# if user_info

		# end
	end

	def show
	end
end
