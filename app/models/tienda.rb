class Tienda < ActiveRecord::Base
  attr_accessible :nombre, :horario, :urls, :x, :y, :direccion, :telefono

  has_many :images, :as => :attachable
end
