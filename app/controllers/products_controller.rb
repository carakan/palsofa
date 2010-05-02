class ProductsController < ApplicationController
  def index
    @categories = Product.category_counts
  end
  
  def show
    @categories = Product.category_counts
    render :action => :index
  end
end
