class Order < ActiveRecord::Base
  belongs_to :order_profile
  has_one :runner
end
