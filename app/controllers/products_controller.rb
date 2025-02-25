class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
    @csblends = Product.all.where(category: "Chiaroscuro оригинални кафе рецепти")
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
