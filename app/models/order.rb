class Order < ActiveRecord::Base
	has_many :line_items

	serialize :line_items, Array
end
