class UsersController < ApplicationController
	skip_before_action :verify_authenticity_token

	def new
		@user = User.new
	end

	def create
		user = User.where(uid: params['uid']).first_or_initialize
		user.username = profile_info['username']
		user.name = profile_info['displayName']
		user.avatar = profile_info['profileImageURL']
		user.location = profile_info['cachedUserProfile']['location']

		if user && user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
			redirect_to new_user_path
		end
	end

	def show
		authorize
		@test = session[:user_id]
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path
	end
end
