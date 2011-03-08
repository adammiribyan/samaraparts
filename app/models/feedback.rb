class Feedback < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  
  validates :full_name, :presence => true
  validates :title, :presence => true
  validates :body, :presence => true  
  
end
