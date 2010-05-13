class PagesController < ApplicationController
  def index
    @slideshows = Image.all(:conditions => {:section => 'slide-index'})
    @products = Product.tagged_with("Home").all(:limit => 2)
  end
  
  def show
    @page = Page.find(params[:id])
  end
  
  def trabajo
    @name_page = "Trabajo"
  end

  def servicios
    @name_page = "Servicios"
  end

  def contact
        @name_page = "Contacto"
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
