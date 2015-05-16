class OrderProfile < ActiveRecord::Base
  has_one :coffee_shop
  has_many :orders
end
