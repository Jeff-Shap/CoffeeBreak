class AddEmailToCoffeeShop < ActiveRecord::Migration
  def change
    add_column :coffee_shops, :email, :string
  end
end
