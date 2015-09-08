class HomeController < ApplicationController
  def index
  	@user = User.where(id: session[:user_id]).first
  	redirect_to @user if @user
  end
end
