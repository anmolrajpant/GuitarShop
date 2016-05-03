class Item < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :user
	validates :uniqueID, presence: true
	validates :make, presence: true
	validates :model, presence: true
	validates :quantity, presence: true
	validates :sellingPrice, presence: true
	validates :condition, presence: true
	validates :rackNo, presence: true
	validates :image, presence: true
end
