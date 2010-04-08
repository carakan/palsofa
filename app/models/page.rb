class Page < ActiveRecord::Base
  attr_accessible :name, :description, :permalink
end
