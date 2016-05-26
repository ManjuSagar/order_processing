class Product < ActiveRecord::Base
  has_many :pictures, as: :imageable
  #accepts_nested_attributes_for :pictures
end
