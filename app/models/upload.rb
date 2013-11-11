class Upload < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey

  mount_uploader :file, MyUploader
end
