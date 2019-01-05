module Purchaseable
  def purchase item
    "#{item} has been purchased!"
  end
end

class OnlineStore
  include Purchaseable
end

class Inn
  prepend Purchaseable # With prepend, mixin methods takes priority
  def purchase item
    "Here, bro! Enjoy your #{item.downcase}"
  end
end

p OnlineStore.ancestors
# => [OnlineStore, Purchaseable, Object, Kernel, BasicObject]

p Inn.ancestors
# => [Purchaseable, Inn, Object, Kernel, BasicObject]
