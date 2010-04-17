class CreateTiendas < ActiveRecord::Migration
  def self.up
    create_table :tiendas do |t|
      t.string :nombre
      t.text :horario
      t.string :urls
      t.float :x
      t.float :y
      t.timestamps
    end
  end
  
  def self.down
    drop_table :tiendas
  end
end
