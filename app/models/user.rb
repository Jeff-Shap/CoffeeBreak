class User < ActiveRecord::Base
  has_many :order_profiles
  has_secure_password
end
