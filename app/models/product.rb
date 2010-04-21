class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :other

  has_many :images, :as => :attachable
end
