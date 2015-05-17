class CoffeeShop < ActiveRecord::Base
  has_one :user, through: :order_profile

end
