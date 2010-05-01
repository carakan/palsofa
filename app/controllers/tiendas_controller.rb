class TiendasController < ApplicationController
  def index
    if params[:id]
      @tiendas = Tienda.all(:conditions => {:id => params[:id]})
    else
      @tiendas = Tienda.all
    end
    
  end
  
  def show
    @tiendas = Tienda.all(:conditions => {:id => params[:id]})
    render :action => :index
  end
end
