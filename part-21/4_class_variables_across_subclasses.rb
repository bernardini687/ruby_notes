class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter += 1
  end
end

class Thingamajig < Product
  @@thingamajig_counter = 0

  def self.counter
    @@thingamajig_counter
  end

  def initialize
    super
    @@thingamajig_counter += 1
  end
end

a = Widget.new
b = Widget.new

p Widget.counter      # => 2
p Product.counter     # => 2

puts

c = Thingamajig.new
d = Thingamajig.new
e = Thingamajig.new

p Thingamajig.counter # => 3
p Product.counter     # => 5
