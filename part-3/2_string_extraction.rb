puts foo = "\"The temple bell stops\n But the sound keeps coming\n out of the flowers\""
# => "The temple bell stops
# =>  But the sound keeps coming
# =>  out of the flowers"
puts

puts foo.size # In index terms subtract 1 because indexes starts from 0
# => 71
puts

p foo[1] # " is the character with index 0
# => "T"
p foo.slice(69) # Here .slice does the same thing
#=> "s"
puts

puts foo[71].class # Returns 'nil' if index too big
puts

# Second argument refers to the number of characters to include from the index
p foo[5, 6] # Include 6 characters from index 5
# => "temple"
p foo[-8, 7]
# => "flowers"
p foo.slice(-27, 7) # \n counts as a single character
# => "coming\n"
puts

# You can also specify ranges with x..y (include y) or x...y (exclude y)
p foo[-19..-10]         #                                   => "out of the"
p foo[63...63]          # Exclude itself                    => ""
p foo[63..60]           # Can't go backwards                => ""
p foo[63..foo.size - 1] # Stops at the very last index (70) => "flowers\""
p foo[63..100]          # Can't go on                       => "flowers\""
