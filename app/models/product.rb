class Product < ApplicationRecord
	include Filterable
	has_one :cart

	scope :name, ->(name) { where("LOWER(name) LIKE ?", "%" + "#{name.downcase}" + "%") }
	scope :price, ->(price) { where(price: (0..price) }
	scope :size, ->(size) { where(size: size) }
	scope :merchant_name, ->(merchant_name) { where(merchant_name: merchant_name) }
end
