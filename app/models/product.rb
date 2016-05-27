class Product < ActiveRecord::Base
  has_many :pictures, as: :imageable
  #accepts_nested_attributes_for :pictures
  has_many :line_items
end
