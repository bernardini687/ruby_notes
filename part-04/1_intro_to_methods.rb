# A method do something specific to an object, returning a result that can be a different object
# You call them with a dot between the object and the method's name

foo = "hello world"
p foo.length # Count the number of characters in the string
# => 11
p foo.upcase # Return the string with all upper case characters
# => "HELLO WORLD"
puts

p 10.next # => 11
p -7.next # => -6
puts

# UTH (Under The Hood), 'p' is a 'puts' + '.inspect' on the given object
puts foo         # => hello world
puts foo.inspect # => "hello world"
p foo            # => "hello world"
