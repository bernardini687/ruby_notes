# Arrays and strings share some similarities
# .slice is the same as .[]

array = %w[bau miao muu cip oink bee iih bair]
string = "supercalifragilistichespiralidoso"

# Use two arguments, the second for the number of elements to include
p array[1, 3]  # => ["miao", "muu", "cip"]
p string.slice(0, 5) # => "super"

# Or ranges for multiple, sequential indexes
p array.slice(1..3)  # => ["miao", "muu", "cip"]
p string[0..4] # => "super"

# Extracting more than 1 element from an array will put them in another array
p array[0].class    # => String
p array[0, 1].class # => Array
puts

# Arrays and strings accepts different methods
p string.respond_to?(:[])        # => true
p string.respond_to?(:slice)     # => true
p string.respond_to?(:fetch)     # => false
p string.respond_to?(:values_at) # => false
puts

p array.respond_to?(:[])        # => true
p array.respond_to?(:slice)     # => true
p array.respond_to?(:fetch)     # => true
p array.respond_to?(:values_at) # => true
puts

# .values_at returns an array of elements of every index value called as an argument
p array.values_at(0..2, 3, 5, 9, -1, 1, 1)
# => ["bau", "miao", "muu", "cip", "bee", nil, "bair", "miao", "miao"]
