class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :card_id
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
