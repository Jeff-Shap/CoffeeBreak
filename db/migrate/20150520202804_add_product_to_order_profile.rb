class AddProductToOrderProfile < ActiveRecord::Migration
  def change
    add_reference :order_profiles, :product, index: true, foreign_key: true
  end
end
