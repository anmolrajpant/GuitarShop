class Item < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
