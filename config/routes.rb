ActionController::Routing::Routes.draw do |map|
  map.resources :jobs

  map.resources :newsletters

  map.resources :tiendas

  map.resources :images, :collection => {:cupones => :get}

  Typus::Routes.draw(map)
  
  map.resources :pages, :collection => {:contact => :get, :trabajo => :get, :servicios => :get, :sended => :post}

  map.resources :products

  map.root :controller => "pages"

  map.cupon '/cupones/:id', :controller => :images, :action => 'image'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
