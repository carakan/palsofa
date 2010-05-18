class TiendasController < ApplicationController
  def index
        @name_page = "Tiendas"
    if params[:id]
      @tiendas = Tienda.all(:conditions => {:id => params[:id]})
    else
      @tiendas = Tienda.all
    end
    
  end
  
  def show
    @name_page = "Tiendas"
    @tiendas = Tienda.all(:conditions => {:id => params[:id]})
    render :action => :index
  end
end
