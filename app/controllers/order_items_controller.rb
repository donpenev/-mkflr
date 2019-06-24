class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :destroy]
  # The [:order_id] value will remain until the browser's cache is cleared

  def create
    @order = current_order
    # if there already is an order_item with that product_id, then just update the quantity of the order_item
    # if product_in_cart?, redirect to the edit method
    unless product_in_cart?
      @item = @order.order_items.new(item_params)
      @item.save
      @order.save
      session[:order_id] = @order.id
      redirect_to cart_path
    else
      edit
    end
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:order_item_id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  def edit
    @order = current_order
    @order_item = @order.order_items.find { |order_item| order_item.product_id == item_params[:product_id].to_i }
    @order_item.quantity += item_params[:quantity].to_i
    @order_item.save
    @order.save
    redirect_to cart_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id, :item)
  end

  def product_in_cart?
    @order.order_items.any? { |order_item| order_item.product_id == item_params[:product_id].to_i }
  end
end
