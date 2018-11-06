a = 24
p a # => 24

a += 2 # Means a = a + 2
p a # => 26
puts # 2 was added to the previous value of the variable (24 + 2)

p a -= 16 # => 10
puts # 16 was subtracted to the previous value of the variable (26 - 16)

p a *= 10 # => 100
puts # 10 times the previous value of the variable (10 * 10)

p a /= 10 # => 10
puts # 10 / 10

p a **= 2 # => 100
puts # 10 squared

p a %= 38 # => 24
# Reassign to 'a' the result of 'a' modulo 38 (100 % 38)
