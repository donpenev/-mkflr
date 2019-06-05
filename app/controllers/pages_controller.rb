class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @order_item = OrderItem.new
  end
end
