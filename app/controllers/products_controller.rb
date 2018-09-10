class ProductsController < ApplicationController
  def create
    @product = Category.find(params['category_id'])
                       .products
                       .build(product_params)
    @product.save
    redirect_to @product.category
  end

  def product_params
    params.require('product').permit(%I[name price])
  end
end
