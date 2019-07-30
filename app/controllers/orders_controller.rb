class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:edit]

  def edit
    @order = Order.find(params[order.order_id])
    raise
  end

  private

  def confirm_order

  end
end
