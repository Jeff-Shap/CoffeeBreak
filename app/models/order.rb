class Order < ActiveRecord::Base
  has_one :order_profile
  has_one :runner
end
