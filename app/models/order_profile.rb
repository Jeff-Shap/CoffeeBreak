class OrderProfile < ActiveRecord::Base
  has_many :orders
  belongs_to :business
  belongs_to :user
end
