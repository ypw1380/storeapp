class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_id
      t.decimal :price
      t.string :name
      t.string :supplier

      t.timestamps
    end
  end
end
