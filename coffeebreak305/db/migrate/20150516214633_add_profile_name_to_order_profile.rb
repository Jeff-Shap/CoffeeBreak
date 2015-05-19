class AddProfileNameToOrderProfile < ActiveRecord::Migration
  def change
    add_column :order_profiles, :profile_name, :string
  end
end
