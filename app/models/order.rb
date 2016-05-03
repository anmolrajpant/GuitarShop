class Order < ActiveRecord::Base
	validates :purchaseDate, presence: true
	validates :pruchaseCompany, presence: true
	validates :quantity, presence: true
	validates :price, presence: true
	validates :deliveryDate, presence: true
end
