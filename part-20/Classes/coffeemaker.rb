class Coffeemaker
  @@maker = "Blec"
  @@count = 0

  def self.description
    "Hi! You've reached the blueprint for the awesome Blec coffemakers"
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end

  def initialize
    @@count += 1
  end
end

p Coffeemaker.description
# => "Hi! You've reached the blueprint for the awesome Blec coffemakers"
p Coffeemaker.count
# => 0
mai = Coffeemaker.new
p mai.maker
# => "Blec"
p Coffeemaker.count
# => 1
