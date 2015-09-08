class HomeController < ApplicationController
  def index
  	@user = User.where(id: current_user.id).first
  	redirect_to @user if @user
  end
end
