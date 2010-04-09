ActionController::Routing::Routes.draw do |map|
  map.resources :images

  Typus::Routes.draw(map)
  map.resources :pages

  map.resources :products

  map.root :controller => "pages"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
