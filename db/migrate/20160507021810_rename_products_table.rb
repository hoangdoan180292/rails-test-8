class RenameProductsTable < ActiveRecord::Migration
  def up
    rename_table :products, :shoes
  end 

  def down
    rename_table :shoes, :products
  end
end
