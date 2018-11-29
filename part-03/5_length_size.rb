# .length and .size methods are the same. Given a string, return the number of characters

a, b, c, d = "November", "Oscar", " ", ""
p a.size, b.size, c.size, d.size
# => 8
# => 5
# => 1
# => 0

p a.length, b.length, c.length, d.length
# => 8
# => 5
# => 1
# => 0

puts
# Calling methods on a certain data type can return a different data type that accepts new methods
p a.class                 # 'a' holds a String
p a.size.class            # 'a.size' returns a Fixnum
p a.size.even?.class      # Fixnum accept the .even? method
p a.size.next.even?.class # "November" > 8 > 9 > false > FalseClass
