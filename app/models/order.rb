class Order < ActiveRecord::Base
  belongs_to :order_profile
  belongs_to :runner
  has_one :user, through: :order_profile
end
