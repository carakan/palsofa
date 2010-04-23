class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :other

  acts_as_taggable_on :category

  has_many :images, :as => :attachable
end
