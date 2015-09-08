class UsersController < ApplicationController
	skip_before_action :verify_authenticity_token

	def new
		@user = User.new
	end

	def create
		profile_info = params['twitter']
		p "****************"
		p params['provider']
		p params['uid']
		p profile_info['cachedUserProfile']['location']
		p profile_info['username']
		p profile_info['displayName']
		p "***************"

		@user = User.where(uid: params['uid']).first_or_create!(
												username: profile_info['username'],
												name: profile_info['displayName'],
												avatar: profile_info['profileImageURL'],
												location: profile_info['cachedUserProfile']['location']
											)
		p "***************"
		p @user
		p "***************"
		if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
			redirect_to new_user_path
		end
	end

	def show
	end
end
