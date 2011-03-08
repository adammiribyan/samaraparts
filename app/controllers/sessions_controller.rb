#coding: utf-8

class SessionsController < ApplicationController
  def new
  end
  
  def create
  	user = User.authenticate(params[:session][:login], params[:session][:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to root_url, :notice => t("sessions.create_succeed")
		else
			flash.now.alert = t("sessions.create_failed")
			render "new"
		end
  end
  
  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, :notice => t("sessions.destroy_succeed")
  end

end
