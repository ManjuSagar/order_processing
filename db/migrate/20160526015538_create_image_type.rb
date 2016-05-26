class CreateImageType < ActiveRecord::Migration
  def up
    add_attachment :pictures, :avatar
  end
end
