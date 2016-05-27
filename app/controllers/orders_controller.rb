class OrdersController < ActionController::Base

  def new
    @order = Order.new
  end

  def create
    @order = Order.create!(order_params)
    LineItem.update_line_items(current_user, @order.id)
    redirect_to :root
  end

  private

  def order_params
    params.require(:order).permit(:phone_number, :address, :pin_code)
  end

end