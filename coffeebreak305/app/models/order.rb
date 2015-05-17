class Order < ActiveRecord::Base
  has_one :order_profile
end
