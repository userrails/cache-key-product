class ProductsController < ApplicationController
  def index
    @products = Product.live
  end
end
