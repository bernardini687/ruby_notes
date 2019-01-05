module Purchaseable
  def purchase item # No need for 'self.purchase' because this is designed to be called upon objects from classes
    "#{item} has been purchased!"
  end
end

class OnlineStore
  include Purchaseable
end

class Inn
  include Purchaseable
  def purchase item # Ruby calls this .purchase because it's an instance method
    "Here, bro! Enjoy your #{item.downcase}"
  end
end

class Market < OnlineStore
end

amazon = OnlineStore.new
otter_lion = Inn.new
flea_market = Market.new

p amazon.purchase "Epic sword"
# => "Epic sword has been purchased!"

p otter_lion.purchase "Milk"
# => "Here, bro! Enjoy your milk"

p flea_market.purchase "Cannonball"
# => "Cannonball has been purchased!"

p OnlineStore.ancestors
# => [OnlineStore, Purchaseable, Object, Kernel, BasicObject]

p Market.ancestors
# => [Market, OnlineStore, Purchaseable, Object, Kernel, BasicObject]
