class Tienda < ActiveRecord::Base
  attr_accessible :nombre, :horario, :urls, :x, :y

  has_many :images, :as => :attachable
end
