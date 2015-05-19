class OrderProfile < ActiveRecord::Base
  has_one :business
  has_many :orders
end
