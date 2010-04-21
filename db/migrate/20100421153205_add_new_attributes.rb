class AddNewAttributes < ActiveRecord::Migration
  def self.up
    add_column :tiendas, :direccion, :string
    add_column :tiendas, :telefono, :string
    remove_column :images, :product_id
    add_column :images, :attachable_type, :string
    add_column :images, :attachable_id, :integer
    add_column :images, :section, :string, :limit => 20
  end

  def self.down
    remove_column :tiendas, :direccion
    remove_column :tiendas, :telefono
    add_column :images, :product_id, :integer
    remove_column :images, :attachable_type
    remove_column :images, :attachable_id
    remove_column :images, :section
  end
end
