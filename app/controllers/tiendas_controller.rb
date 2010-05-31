class TiendasController < ApplicationController
  def index
        @name_page = "Tiendas"
    if params[:id1] || params[:id2]
      @tiendas = Tienda.all(:conditions => {:id => [params[:id1], params[:id2]]})
    else
      @tiendas = Tienda.all
    end  
  end
  
  def show
    @name_page = "Tiendas"
    @tiendas = Tienda.all(:conditions => {:id => [params[:id1], params[:id2]]})
    render :action => :index
  end
end