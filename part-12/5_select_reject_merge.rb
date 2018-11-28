# .select and .reject on a hash extract key-value pairs whether either the key, the value, or both, match a condition
#
in_da_fridge = {
  teriyaki: 2,
  yogurt: 4,
  water: 2,
  milk: 1,
  carrots: 8
}
#
low_supply = in_da_fridge.select { |item, count| count <= 2 }
enough_supply = in_da_fridge.reject { |item, count| count <= 2 }
include_y = in_da_fridge.select { |item, count| item.to_s.include?("y") }
#
p low_supply
# => {:teriyaki=>2, :water=>2, :milk=>1}
#
p enough_supply
# => {:yogurt=>4, :carrots=>8}
#
p include_y
# => {:teriyaki=>2, :yogurt=>4}

# .merge allows key-value pairs of two different hashes to be merged
# .merge! will override the hash it's called upon
#
shopping_bag = {
  salad: 3,
  milk: 3
}
#
# If duplicates are found, it keeps the value of the argument's hash
p in_da_fridge.merge(shopping_bag)
# => {:teriyaki=>2, :yogurt=>4, :water=>2, :milk=>3, :carrots=>8, :salad=>3}
#
p shopping_bag.merge(in_da_fridge)
# => {:salad=>3, :milk=>1, :teriyaki=>2, :yogurt=>4, :water=>2, :carrots=>8}

def custom_merge(hash1, hash2)
  result = hash1.dup
  hash2.each { |key, value| result[key] = value }
  result
end

p custom_merge(in_da_fridge, shopping_bag)
# => {:teriyaki=>2, :yogurt=>4, :water=>2, :milk=>3, :carrots=>8, :salad=>3}
