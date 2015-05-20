class AddCoffeeToOrderProfile < ActiveRecord::Migration
  def change
    add_column :order_profiles, :coffee, :string
  end
end
