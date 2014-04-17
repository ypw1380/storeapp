class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.datetime :date

      t.timestamps
    end
  end
end
