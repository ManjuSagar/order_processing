class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :user_id
      t.integer :product_id
    end
  end
end
