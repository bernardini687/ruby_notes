# The pipe character is a shorthand for a method that returns an array composed of only the elements that are unique to the arrays at its sides

bad_food = %w[chips sweets meat bread]
ok_food = %w[meat cheese bread bread]
good_food = %w[vegetables fish bread]

food = bad_food | ok_food | good_food
p food # => ["chips", "sweets", "meat", "cheese", "bread" "vegetables", "fish"]

# Shorthand for .|

p ok_food.|(good_food) # => ["meat", "cheese", "bread" "vegetables", "fish"]

def custom_union(arr1, arr2)
  result = []
  arr1.each { |elem| result << elem unless result.include?(elem) }
  arr2.each { |elem| result << elem unless result.include?(elem) }
  result
end

p custom_union(ok_food, good_food)
# => ["meat", "cheese", "bread" "vegetables", "fish"]
p custom_union(bad_food, ok_food)
# => ["chips", "sweets", "meat", "bread", "cheese"]

def shortr_custom_union(arr1, arr2)
  arr1.dup.concat(arr2).uniq
end

p shortr_custom_union(bad_food, good_food)
# => ["chips", "sweets", "meat", "bread", "vegetables", "fish"]
