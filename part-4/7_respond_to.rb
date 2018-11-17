# .respond_to? returns true if a specified method is ok for a given object
foo = "ciao"
p foo.length if foo.respond_to?("length") # => 4

# Use symbols as the argument of .respond_to? They're lighter on memory
p 1.next if 1.respond_to?(:next) # => 2
