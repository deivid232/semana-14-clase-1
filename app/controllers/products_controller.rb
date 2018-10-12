class ProductsController < ApplicationController

  def index
    @products = Product.all
  end


  def new
  @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to categories_url

  end

private
  def product_params
    params.require(:product).permit(:name, :price)

  end
end
