class LineItemsController < ApplicationController
  def create
    LineItem.create(:user_id=> current_user.id, :product_id=> params[:product_id])
    redirect_to :back
  end
end