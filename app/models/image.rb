class Image < ActiveRecord::Base
  has_attached_file :image, :styles => { :tiny => '70x50#', :small => "210x115#" },
    :storage => :database

  default_scope select_without_file_columns_for(:image)

  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']

  belongs_to :attachable, :polymorphic => true

  def to_s
    return "Imagen #{self.description}"
  end
end