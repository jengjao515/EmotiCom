class UsersController < ApplicationController
	skip_before_action :verify_authenticity_token

	def new
		@user = User.new
	end

	def create
		profile_info = params['twitter'] if params['twitter']
		if profile_info
			uid = params['uid']
			user = UsersHelper.find_user(profile_info, uid)
		else
			user = UsersHelper.no_ouath(params)
		end

		if user && user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
			redirect_to new_user_path
		end
	end

	def show
		authorize
		@user = User.where(id: current_user.id).first
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path
	end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
