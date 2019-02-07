class CreateLoadouts < ActiveRecord::Migration[5.2]
  def change
    create_table :loadouts do |t|
      t.string :name
      t.integer :item1
      t.integer :item2
      t.integer :item3

      t.timestamps
    end
  end
end
