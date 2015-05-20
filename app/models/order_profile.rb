class OrderProfile < ActiveRecord::Base
  has_many :orders
  belongs_to :business
  belongs_to :user
  has_one :product, through: :business
end
