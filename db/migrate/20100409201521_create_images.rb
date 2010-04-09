class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :description
      t.string :image_file_name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :images
  end
end
