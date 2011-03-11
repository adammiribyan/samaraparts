# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  
  storage :file

  def store_dir
    "uploads/images"
  end

  version :thumb do
    process :resize_to_fill => [58, 58]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

#  def filename
#    model.id.to_s + File.extname(@filename) if @filename
#  end

end
