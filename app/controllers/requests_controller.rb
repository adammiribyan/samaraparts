class RequestsController < ApplicationController
  def new
  	@request = Request.new
  end
  
  def create
  	@request = Request.new(params[:request])
  	if @request.save
  		UserMailer.part_request(@request).deliver
  		flash.now[:notice] = t("requests.create_succeed")
		else
			flash.now[:notice] = t("requests.create_failed")
		end
  end

end
