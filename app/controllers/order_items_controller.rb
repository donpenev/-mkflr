class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  #The [:order_id] value will remain until the browser's cache is cleared

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to products_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
