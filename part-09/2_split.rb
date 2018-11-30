# .split strings into substrings based on a delimiter, returning an array of these substrings

foo = "It's raining yellow frogs, what about that?"

# No argument is equal to a whitespace: .split == .split(" ")

p foo.split
# => ["It's", "raining", "yellow", "frogs,", "what", "about", "that?"]

p foo.split(",")
# => ["It's raining yellow frogs", " what about that?"]

words = foo.split # Assign the resulting array to a variable
words.each { |word| print "#{word.length} "} # Iterate over its elements and print their length
# => 4 7 6 6 4 5 5
