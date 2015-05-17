class OrderProfile < ActiveRecord::Base
  has_one :coffee_shop
  has_many :orders
  belongs_to :user, :foreign_key => :User_id
end
