# frozen_string_literal: true

module Affordable
  def can_purchase?(price, money_I_have)
    return true if price < (money_I_have / 2)

    false
  end
end

class Vegetables
  include Enumerable
  include Comparable
  include Affordable
end

class Fruits < Vegetables
end

class Meat
  prepend Affordable
  def can_purchase?(_price, _money_I_have)
    'well, no'
  end
end

class Cakes
  extend can_purchase?
end

tomatoe = Vegetables.new
p tomatoe.can_purchase?(1000, 200)
orange = Fruits.new
p orange.can_purchase?(1, 5)
beef = Meat.new
p beef.can_purchase?(10, 10)
