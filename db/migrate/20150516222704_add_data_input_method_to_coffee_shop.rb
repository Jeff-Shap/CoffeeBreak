class AddDataInputMethodToCoffeeShop < ActiveRecord::Migration
  def change
    add_column :coffee_shops, :data_input_method, :string
  end
end
