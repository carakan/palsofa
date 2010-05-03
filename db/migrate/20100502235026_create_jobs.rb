class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.date :datejob
      t.timestamps
    end

    add_column :images, :url, :string
  end
  
  def self.down
    drop_table :jobs

    remove_column :images, :url
  end
end
