# The puts method is an example of a statement, a single command in Ruby

puts "Yo" # Output the given object
puts "Remember, 'puts' adds a line break at the end."

# A string accepts any character
puts ":-)"

# Combining multiple strings is called 'concatenation'
puts "4" + "3" # => 43

# With numbers it's arithmetic
puts 4 + 3 # => 7

puts # I can put nothing just to add some space at the output

print "Look mom no break " # Print the given object without a new line
puts "line"                # Complete the sentence and add a new line

puts # And now for p

p "'p' is a more literal method for getting an output!"
# => "'p' is a more literal method for getting an output!"
puts "This is what happen if I line break here
while using 'puts'"
# => This is what happen if I line break here
# => using 'puts'
p "This is what happen when I line break here
using 'p'!"
# => "This is what happen when I line break here\nusing 'p'!"

# Numbers are fishy
puts 5 # => 5
p 5    # => 5

# Strings, you catch 'em
puts "5" # => 5
p "5"    # => "5"
