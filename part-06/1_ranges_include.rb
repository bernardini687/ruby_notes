# Ranges are a specific object in ruby

nums = 1..20 # Stores numbers from 1 to 20
nums2 = 1...20 # Stores numbers form 1 to 19

p nums       # => 1..20
puts nums2   # => 1...20
p nums.class # => Range

# .first and .last methods for ranges
p nums.first # => 1
p nums2.last # => 20

# .size method for numeric ranges
puts nums2.size # => 19

# .first and .last take arguments
p nums.first(3) # => [1, 2, 3]
p nums2.last(3) # => [17, 18, 19]

# puts 1..10.first(3)
# .first is not avaiable on a Fixnum:
puts 10.class               # => Fixnum
puts 10.respond_to?(:first) # => false

# The problem was the omitting of parenthesis
puts (1..10).class # => Range
p (1..10).first(3) # => [1, 2, 3]

# Also alphabet

az = "a".."z"
az_caps = "A".."Z"
all_char = "A".."z" # after 'Z' there are 6 non-alphabetical characters, 58 tot

az.first(26)      # All 26 small caps alphabetic characters
p az_caps.last(3) # => ["X", "Y", "Z"]
p az.size         # .size with alphabetical chars returns 'nil'

# .include? and ===

p az.include?("z") # p az === "z"   # => true
p nums === 20 # p nums.include?(20) # => true
