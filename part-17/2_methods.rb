float = 3.14.methods.sort
fixnum = 3.methods.sort
array = Array.new.methods.sort
hash = Hash.new.methods.sort

p float.length               # => 116
p fixnum.length              # => 133
p array.length               # => 176
p hash.length                # => 159

# Unique elements to fixnum
puts (fixnum - float).length # => 22

# Common elementes to array and hash
puts (array & hash).length   # => 130
