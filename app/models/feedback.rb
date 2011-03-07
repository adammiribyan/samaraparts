class Feedback < ActiveRecord::Base
  validates :full_name, :presence => true
  validates :title, :presence => true
  validates :body, :presence => true
  
end
