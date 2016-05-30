class Product < ActiveRecord::Base
  has_many :pictures, as: :imageable
  #accepts_nested_attributes_for :pictures
  has_many :line_items
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :pictures, presence: { message: "Image Cannot be blank." }
end
