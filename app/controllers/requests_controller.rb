class RequestsController < ApplicationController
  def new
  	@request = Request.new
  end
  
  def create
  	@request = Request.new(params[:request])
  	if @request.save
  		UserMailer.part_request(@request).deliver
  		redirect_to @request, :notice => t("requests.create_succeed")
		else
			redirect_to root_url, :notice => t("requests.create_failed")
		end
  end
  
  def show  	
  end

end
