class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  
  def show
    @image = Image.find(params[:id])
  end
  
  def cupon
    @banner = Image.first(:conditions => {:section => 'cupon'})
    if @banner
      render :layout => 'print'
    else
      render :text => "no existe el cupon", :layout => 'print'
    end
  end
end
