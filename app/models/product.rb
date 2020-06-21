class Product < ApplicationRecord
	include Filterable
	
	scope :name, ->(name) { where("name LIKE ?", "%" + "#{name}" + "%") }
end
