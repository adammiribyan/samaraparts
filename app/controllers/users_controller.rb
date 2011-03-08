#coding: utf-8

class UsersController < ApplicationController
  def new
  	@user = User.new
  end
	
  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to root_url, :notice => t("users.create_succeed")
		else
			render "new"
		end
  end

end
