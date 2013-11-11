class MyUploader < CarrierWave::Uploader::Base
	include CarrierWave::MiniMagick 

	 version :thumb do
      process :resize_to_fill => [100,100]
    end

    storage :file

  def store_dir
    'images'
  end

end