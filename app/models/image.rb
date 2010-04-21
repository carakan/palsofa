class Image < ActiveRecord::Base
  has_attached_file :image, :styles => { :small => "150x150>" },
    :url  => "/assets/image/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/image/:id/:style/:basename.:extension"

  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']

  belongs_to :attachable, :polymorphic => true
end