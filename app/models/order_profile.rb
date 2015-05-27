class OrderProfile < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  has_one :business, through: :product
end
