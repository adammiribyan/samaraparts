class Feedback < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  
  validates :full_name, :presence => true
  validates :title, :presence => true
  validates :body, :presence => true  
  
  def self.find(*args)
    if args.first.to_s == "random"
      ids = connection.select_all("SELECT id FROM feedbacks")
      super(ids[rand(ids.length)]["id"].to_i)
    else
      super
    end
  end
  
end
