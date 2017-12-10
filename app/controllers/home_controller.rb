class HomeController < ApplicationController
  def index
  	@product = Product.paginate(:page => params[:page], :per_page => 3)
  	@order_item = current_order.order_items.new
  end
end
