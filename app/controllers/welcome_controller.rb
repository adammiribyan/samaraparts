class WelcomeController < ApplicationController
  def index
  	@request = Request.new
  	@request.year = Time.now.year
    @feedbacks = Feedback.find(:all, :order => "random()", :limit => 3)
    @cars = ['big_blue', 'pretty_red', 'little_salate']
  end

end
