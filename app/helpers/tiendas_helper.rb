module TiendasHelper
  def select_tienda
    select_tag('hola', options_for_select(Tienda.all.collect{|tienda| [tienda.nombre, tienda.id]}))
  end
end
