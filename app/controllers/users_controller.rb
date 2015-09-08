class UsersController < ApplicationController
	skip_before_action :verify_authenticity_token

	def new
		@user = User.new
	end

	def create
		profile_info = params['twitter']
		uid = params['uid']
		user = UsersHelper.find_user(profile_info, uid)

		if user && user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
			redirect_to new_user_path
		end
	end

	def show
		@user = User.where(id: current_user.id).first
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path
	end
	
end
