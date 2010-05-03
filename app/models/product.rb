class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :other, :category_list, :special_list

  acts_as_taggable_on :categories, :specials

  has_many :images, :as => :attachable

  def self.select_product(category, section)
    if category.nil? || category.blank?
      Product.tagged_with("#{section}").all(:limit => 4)
    else
      Product.tagged_with("#{category},#{section}", :match_all => true)
    end
  end
end
