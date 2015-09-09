class HomeController < ApplicationController
  def index
  	if current_user
  		@user = User.where(id: current_user.id).first
  		redirect_to @user
  	end
  end
end
