class RemoveCoffeeShopIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :coffee_shop_id, :datatype
  end
end
