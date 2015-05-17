class RemoveOrderProfileFromUser < ActiveRecord::Migration
  def change
    remove_index(:users, :name => 'index_users_on_order_profile_id')
  end
end
