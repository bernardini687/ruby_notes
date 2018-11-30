# .any accepts a block that returns boolean values and will return true if at least one element of an array evaluates to true in the block

p [1, 3, 5, 7, 2, 9].any? { |num| num.even? } # => true
p [1, 3, 5, 7, 3, 9].any? { |num| num.even? } # => false
p [1, 4, 5, 7, 2, 9].any? { |num| num.even? } # => true

# .all accepts a block that returns boolean values and will return true if every element of an array evaluates to true in the block

p [1, 3, 5, 7, 2, 9].all? { |num| num.odd? } # => false
p [1, 3, 5, 7, 3, 9].all? { |num| num.odd? } # => true
puts

# .uniq removes duplicate elements from an array and returns a polished instance

neighborhood_cats_ages = [11, 11, 7, 5, 4, 6, 1, 11, 1, 1]
p neighborhood_cats_ages.uniq # => [11, 7, 5, 4, 6, 1]

# .uniq! modify the object
neighborhood_cats_ages.uniq!
p neighborhood_cats_ages.sort # => [1, 4, 5, 6, 7, 11]

def custom_uniq(arr)
  uniq_arr = []
  arr.each { |elem| uniq_arr << elem unless uniq_arr.include?(elem) }
  uniq_arr
end

p custom_uniq([3, 2, 5, 2, 3, 3, 5, 6, 6, 2, 5, 6]) # => [3, 2, 5, 6]
