class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.date :datejob
      t.timestamps
    end

    add_column :images, :url, :string


    add_column :images, :image_file, :binary
    add_column :images, :image_small_file, :binary
    add_column :images, :image_tiny_file, :binary
  end
  
  def self.down
    drop_table :jobs

    remove_column :images, :url

    remove_column :images, :image_file
    remove_column :images, :image_small_file
    remove_column :images, :image_tiny_file
  end
end
