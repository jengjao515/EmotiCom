class HomeController < ApplicationController
  def index
  	if logged_in?
  		@user = User.where(id: current_user.id).first
  		redirect_to @user
  	end
  end
end
