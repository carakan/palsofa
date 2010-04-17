class TiendasController < ApplicationController
  def index
    @tiendas = Tienda.all
  end
  
  def show
    @tienda = Tienda.find(params[:id])
  end
  
  def new
    @tienda = Tienda.new
  end
  
  def create
    @tienda = Tienda.new(params[:tienda])
    if @tienda.save
      flash[:notice] = "Successfully created tienda."
      redirect_to @tienda
    else
      render :action => 'new'
    end
  end
  
  def edit
    @tienda = Tienda.find(params[:id])
  end
  
  def update
    @tienda = Tienda.find(params[:id])
    if @tienda.update_attributes(params[:tienda])
      flash[:notice] = "Successfully updated tienda."
      redirect_to @tienda
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tienda = Tienda.find(params[:id])
    @tienda.destroy
    flash[:notice] = "Successfully destroyed tienda."
    redirect_to tiendas_url
  end
end
