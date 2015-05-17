class AddCoffeeShopToOrderProfile < ActiveRecord::Migration
  def change
    add_reference :order_profiles, :coffee_shop, index: true, foreign_key: true
  end
end
