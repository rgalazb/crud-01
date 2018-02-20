class ProductsController < ApplicationController

  def create
    category = Category.find(params[:category_id])
    category.products.build(product_params)
    category.save
    redirect_to category
  end

  def destroy
    category = Category.find(params[:category_id])
    product = Product.find(params[:id])
    product.destroy
    redirect_to category
  end

  private


  def product_params
    params.require(:product).permit(:name, :price)
  end
end
