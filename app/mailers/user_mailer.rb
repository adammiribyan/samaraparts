#coding: utf-8

class UserMailer < ActionMailer::Base
	default :from => "info@samaraparts.ru"
	
  def part_request(request)
  	@request = request
  	mail(:to => "adam.miribyan@gmail.com", :subject => "Новая онлайн заявка")
  end
  
end
