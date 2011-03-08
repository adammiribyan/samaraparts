class AddPictureToFeedbacks < ActiveRecord::Migration
  def self.up
    add_column :feedbacks, :picture, :string
  end

  def self.down
    remove_column :feedbacks, :picture
  end
end
