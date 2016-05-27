class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :address
      t.string :phone_number
      t.string :pin_code
    end
    add_column :line_items, :order_id, :integer
  end
end
