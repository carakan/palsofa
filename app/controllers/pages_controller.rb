class PagesController < ApplicationController
  def index
    @slideshows = Image.all(:conditions => {:section => 'slide-index'})
  end
  
  def show
    @page = Page.find(params[:id])
  end
  
  def new
    @page = Page.new
  end
  
  def create
    @page = Page.new(params[:page])
    if @page.save
      flash[:notice] = "Successfully created page."
      redirect_to @page
    else
      render :action => 'new'
    end
  end
  
  def edit
    @page = Page.find(params[:id])
  end
  
  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      flash[:notice] = "Successfully updated page."
      redirect_to @page
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Successfully destroyed page."
    redirect_to pages_url
  end

  def trabajo
    
  end

  def servicios
  end

  def contact
    @tiendas = Tienda.all
  end

  def sended
    flash[:notice] = "Se envio el mensaje, gracias por contactarnos"

    

    if params[:product_id]
      product = Product.first(params[:product_id])
      message = <<-EOF
      Solicitud del producto #{product.name}
      
 #{params[:mensaje]} \n\n #{request.referer}
      EOF

      UserMailer.deliver_message(params[:email], params[:nombre], message)
    else
      UserMailer.deliver_message(params[:email], params[:nombre], "#{params[:mensaje]} \n\n #{request.referer}")
    end
    redirect_to root_url
  end
end
