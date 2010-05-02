ActionController::Routing::Routes.draw do |map|
  map.resources :newsletters

  map.resources :tiendas

  map.resources :images, :collection => {:cupon => :get}

  Typus::Routes.draw(map)
  
  map.resources :pages, :collection => {:contact => :get, :trabajo => :get, :servicios => :get, :sended => :post}

  map.resources :products

  map.root :controller => "pages"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
