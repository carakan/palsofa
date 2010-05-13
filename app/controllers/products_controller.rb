class ProductsController < ApplicationController
  def index
    @name_page = "Productos"
  end
  
  def show
    @name_page = "Productos"
    render :action => :index
  end
end
