class AddBusinessToOrderProfile < ActiveRecord::Migration
  def change
    add_reference :order_profiles, :business, index: true, foreign_key: true
  end
end
