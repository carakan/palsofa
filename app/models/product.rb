class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :other, :category_list, :special_list

  acts_as_taggable_on :categories, :specials

  has_many :images, :as => :attachable

  def self.select_product(category, limit = false)
    if limit
      Product.tagged_with("#{category}").all(:limit => 4)
    else
      Product.tagged_with("#{category}", :match_all => true)
    end
  end
end
