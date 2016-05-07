class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string          :name
      t.string          :sku
      t.decimal         :price, precision: 15 , scale: 2
      t.attachment      :picture

      t.timestamps
    end
  end
end
