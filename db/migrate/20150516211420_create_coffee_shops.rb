class CreateCoffeeShops < ActiveRecord::Migration
  def change
    create_table :coffee_shops do |t|

      t.timestamps null: false
    end
  end
end
