class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :other, :category_list, :special_list, :principal_list

  acts_as_taggable_on :categories, :specials, :principals

  has_many :images, :as => :attachable

  def self.select_product(category, limit = false)
    if limit
      Product.tagged_with("#{category}").all(:limit => 4)
    else
      Product.tagged_with("#{category}")
    end
  end
end
