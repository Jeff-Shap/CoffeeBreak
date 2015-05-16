class AddDateToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :date, :string
  end
end
