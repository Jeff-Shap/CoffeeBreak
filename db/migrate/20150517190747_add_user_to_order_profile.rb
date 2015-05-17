class AddUserToOrderProfile < ActiveRecord::Migration
  def change
    add_reference :order_profiles, :User, index: true, foreign_key: true
  end
end
