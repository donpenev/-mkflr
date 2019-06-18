class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :destroy]
  # The [:order_id] value will remain until the browser's cache is cleared

  def create
    @order = current_order
    # if there already is an order_item with that product_id, then just update the quantity of the order_item
    @item = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to products_path
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:order_item_id])
    # raise
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id, :item)
  end

end
