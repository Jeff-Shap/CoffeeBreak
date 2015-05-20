class AddPhoneToCoffeeShop < ActiveRecord::Migration
  def change
    add_column :coffee_shops, :phone, :string
  end
end
