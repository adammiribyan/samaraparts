class WelcomeController < ApplicationController
  def index
  	@request = Request.new
  	@request.year = Time.now.year
  end

end
