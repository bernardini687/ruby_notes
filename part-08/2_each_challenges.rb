# Prints the product of the element and its index position if the index position is greater than the element

foo = [-1, 2, 1, 2, 5, 7, 3]

def print_if(arr)
  arr.each_with_index do |val, indx|
    puts "Match: (#{indx} > #{val})! Product is: #{val * indx}" if indx > val
  end
end

print_if(foo)
# => Match: (0 > -1)! Product is: 0
#    Match: (2 > 1)! Product is: 2
#    Match: (3 > 2)! Product is: 6
#    Match: (6 > 3)! Product is: 18

puts # Sum the elements of an array:
def array_sum(arr)
  sum = 0
  arr.each { |num| sum += num }
  sum
end

p array_sum(foo) # => 19

#----------------------#

# Write a loop that iterates over a numeric array
# Output the product of each number and its index position

def element_index_product(arr)
  arr.each_with_index do |n, ix|
    p "The product of #{n} and #{ix} is: #{n * ix}"
  end
end

# Write a loop that returns a sum of the products of each index and its value

def sum_of_products(arr)
  sum = 0
  arr.each_with_index do |number, index|
    result = number * index
    sum += result
  end
  p sum
end

nums, challenge = [3, 3, 1, 2, 2, 5, 7, 5, 3, 3], [1, 2, 3, 4, 5]

element_index_product(nums)
sum_of_products(nums)

element_index_product(challenge)
sum_of_products(challenge)
