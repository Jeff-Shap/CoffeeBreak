class AddDeliveryAddressToOrderProfile < ActiveRecord::Migration
  def change
    add_column :order_profiles, :delivery_address, :string
  end
end
