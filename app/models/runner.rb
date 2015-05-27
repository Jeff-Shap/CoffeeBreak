class Runner < ActiveRecord::Base
  has_many :orders
  attr_reader :runners

  def self.initialize(runners)
    @runners = {
      :max => "9544714987",
      :josh => "3058048507",
      :jeff => "9415041055"
    }
  end
end
