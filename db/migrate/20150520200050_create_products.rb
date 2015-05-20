class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :size
      t.integer :cost_in_pennies

      t.timestamps null: false
    end
  end
end