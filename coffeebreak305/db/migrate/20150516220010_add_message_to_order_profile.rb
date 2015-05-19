class AddMessageToOrderProfile < ActiveRecord::Migration
  def change
    add_column :order_profiles, :message, :string
  end
end
