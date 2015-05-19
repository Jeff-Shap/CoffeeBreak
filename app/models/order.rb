class Order < ActiveRecord::Base
  belongs_to :order_profile
  belongs_to :runner
  belongs_to :user through: :order_profile
end
