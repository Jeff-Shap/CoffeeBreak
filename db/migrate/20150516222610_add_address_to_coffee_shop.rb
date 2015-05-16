class AddAddressToCoffeeShop < ActiveRecord::Migration
  def change
    add_column :coffee_shops, :address, :string
  end
end
