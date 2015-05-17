class RemoveOrderProfileFromUser2 < ActiveRecord::Migration
  def change
    remove_column :users, :order_profile_id
  end
end
