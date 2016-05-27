class LineItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :order

  def self.update_line_items(user, order_id)
    LineItem.where("order_id is null and user_id = #{user.id}").update_all("order_id = #{order_id}")
   # LineItem.update_all("order_id = #{order_id}", ["user_id = ? order_id is null", user.id])
  end

  def self.get_valuable_product
    @product_name = []
    self.group(:product_id).count.sort_by{|k,v| v}[0..2].each do |product_id|
      @product_name << Product.find(product_id[0]).name
    end
    @product_name
  end

  def self.get_valuable_customer
    @valuable_cust = []
    self.group(:user_id).count.sort_by{|k,v| v}[0..2].each do |cust_id|
      @valuable_cust << User.find(cust_id[0]).name
    end
    @valuable_cust
  end
end