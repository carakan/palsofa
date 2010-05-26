module TiendasHelper
  def select_tienda
    select_tag('id', options_for_select(['Seleccione la tienda:'] + Tienda.all.collect{|tienda| [tienda.nombre, tienda.id]}), {:class => 'selectienda'})
  end
end
