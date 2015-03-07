class Textile < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
