#coding: utf-8

class SessionsController < ApplicationController
  def new
  end
  
  def create
  	user = User.authenticate(params[:session][:login], params[:session][:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to root_url, :notice => "Вошли успешно."
		else
			flash.now.alert = "Неправильный логин или пароль #{params[:login]}"
			render "new"
		end
  end
  
  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, :notice => "Вышли успешно."
  end

end
