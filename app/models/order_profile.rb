class OrderProfile < ActiveRecord::Base
  has_many :orders
  has_one :business
end
