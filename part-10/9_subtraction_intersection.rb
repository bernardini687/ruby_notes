# The subtraction operator is a shorthand for a method that returns a new array with the elements of the array on the left minus the elements of the array on the right

a = [1, 4, 2, 2, 5, 8, 8, 9]
b = [1, 4, 2, 3]

p a - b # => [5, 8, 8, 9]

def custom_subtraction(arr1, arr2)
  result = []
  arr1.each { |elem| result << elem unless arr2.include?(elem) }
  result
end

p custom_subtraction(a, b) # => [5, 8, 8, 9]
p custom_subtraction([3, 4, 2, 5, 7, 3], [3, 7]) # => [4, 2, 5]

# The ampersand character is a shorthand for a method that returns an array composed of only the elements that are common to the arrays at its sides

p a & b # => [1, 4, 2]

def custom_intersection(arr1, arr2)
  result = []
  arr1.uniq.each { |elem| result << elem if arr2.include?(elem) }
  result #.uniq would have been fine here too, but before it's more efficient
end

p custom_intersection(a, b) # => [1, 4, 2]
