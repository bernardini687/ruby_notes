# Spaceship operator checks the relationship between the elements at its sides
# If left is more than right it returns 1
# If left is less than right it returns -1
# If they're equale it returns 0
# If they're uncomparable it returns 'nil'

p "a" <=> "A" # =>    1
p 1 <=> 10    # =>   -1
p "z" <=> "z" # =>    0
p 5 <=> true  # =>  nil

puts

p [1, 2, 3] <=> [1, 2, 3]  # =>    0 (all elements must be equal)
p [1, 2, 3] <=> [1, 2, 4]  # =>   -1
p [1, 2, 3] <=> [1, 2, 1]  # =>    1
p [1, 2, 3] <=> ["", 2, 4] # =>  nil

puts # With arrays, it stops evaluating as soon as it finds a difference

p [-1, 3, -3] <=> [1, 3, -3]  # =>  -1
p [-1, 3, -3] <=> [-1, -2, 3] # =>   1
p [-1, 3, 13] <=> [-1, 2, 3]  # =>   1
