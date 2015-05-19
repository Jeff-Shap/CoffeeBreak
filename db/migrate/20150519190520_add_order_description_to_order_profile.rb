class AddOrderDescriptionToOrderProfile < ActiveRecord::Migration
  def change
    add_column :order_profiles, :orderdescription, :string
  end
end
