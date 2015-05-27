class Runner < ActiveRecord::Base
  has_many :orders

  def self.get_runner
    self.all.sample
  end
end
