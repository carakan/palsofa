class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :other, :category_list, :special_list

  acts_as_taggable_on :categories, :specials

  has_many :images, :as => :attachable
end
