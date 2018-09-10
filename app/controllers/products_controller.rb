class ProductsController < ApplicationController
  def create
    Product.create(product_params)
    redirect_to Category.find(params['product']['category_id'])
  end

  def product_params
    params.require('product').permit(%I[name price category_id])
  end
end
