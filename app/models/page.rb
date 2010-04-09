class Page < ActiveRecord::Base
  attr_accessible :name, :description, :permalink

  has_many :images
end
