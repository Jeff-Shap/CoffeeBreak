class AddNameToCoffeeShop < ActiveRecord::Migration
  def change
    add_column :coffee_shops, :name, :string
  end
end
