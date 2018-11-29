# name = String.new("Oscar")
tab_name, newline_name = "\tOscar", "\nOscar"
print tab_name, newline_name
# => 	Oscar
# => Oscar
puts

# Multiple lines string
pointer = <<A # The character after << has to match the closing character
point point
  point point
point point
A
puts pointer
# => point point
# =>   point point
# => point point
p pointer
# = > "point point\n  point point\npoint point\n"
puts

# Single quotes, double quotes, backslash

p "Yo", 'Yo' # Are both valid strings
# => "Yo"
# => "Yo"
puts

# Use different quotes in these contexts
puts "Banana said 'mango' to Kiwi", 'Banana said "mango" to Kiwi'
# => Banana said 'mango' to Kiwi
# => Banana said "mango" to Kiwi
puts

# Or escape the same quotetion marks with backslashes
puts 'Banana said \'mango\' to Kiwi'
# => Banana said 'mango' to Kiwi
puts

# Single quotes are literal, similar to p
puts "Hello\nworld"
# => Hello
# => world
puts 'Hello\nworld'
# => Hello\nworld
