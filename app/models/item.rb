class Item < ActiveRecord::Base
	mount_uploader :image, ImageUploder
end
