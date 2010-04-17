class Tienda < ActiveRecord::Base
  attr_accessible :nombre, :horario, :urls, :x, :y
end
