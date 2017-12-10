class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    @product = Product.paginate(:page => params[:page], :per_page => 3)
  end
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end
  def show
    
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

   private

   def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:category_id, :title, :price, :stock, :descripcion, :image)
    end
end
