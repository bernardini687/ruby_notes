# .select on an array returns a new array containing all elements of the array for which the given block returns a true value
#
banana = [4, 8, 15, 16, 23, 42]
#
potato = banana.select do |n| # Store the results in a potato
  n % 3 == 0                  # Select multiples of 3
end
#
p potato
# => [15, 42]
#
words = %w[racecar papaya anna itopinonavevanonipoti]
#
palindromes = words.select { |match| match == match.reverse }
# The .select block must return a boolean value
#
p palindromes
# => ["racecar", "anna", "itopinonavevanonipoti"]

# .reject on an array returns a new array containing all elements of the array for which the given block returns false
#
carrot = banana.reject { |n| n % 3 == 0 } # Now we're rejecting multiples of 3
p carrot # Carrots hate the 3 times table
# => [4, 8, 16, 23]

# .partition returns two arrays, the first containing the elements for which the block evaluates to true, the second containing the rest
#
raven_pod = banana.partition { |n| n.even? }
p raven_pod # It's a 2D array with even numbers in the first array and odds in the latter
# => [[4, 8, 16, 42], [15, 23]]
