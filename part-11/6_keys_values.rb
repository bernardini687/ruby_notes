# .keys and .values return respectively an array of keys or values from a hash

garden = {trees: 9, flowers: 82, birds: 18, bees: 82}

p garden.keys
# => [:trees, :flowers, :birds, :bees]

p garden.values
# => [9, 82, 18, 82]

p garden.values.uniq
# => [9, 82, 18]

def custom_keys(hash)
  keys = []
  hash.each { |pair| keys << pair.first }
  keys
end

def custom_values(hash)
  values = []
  hash.each { |pair| values << pair.last }
  values
end

p custom_keys(garden)
# => [:trees, :flowers, :birds, :bees]

p custom_values(garden)
# => [9, 82, 18, 82]
