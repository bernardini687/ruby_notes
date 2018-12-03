# .call a Proc by itself

adele = Proc.new { puts "Hello from the other side" }
adele.call # => Hello from the other side

def test
  puts "I'm inside the method"
  yield
end

test(&adele)
# => I'm inside the method
#    Hello from the other side

# It's possible to pass a Ruby method as a Proc to another method

p ["1", "2", "3"].map { |n| n.to_i } # => [1, 2, 3]

# Simply put
p ["1", "2", "3"].map(&:to_i) # => [1, 2, 3]

p [3, 5, 2, 7, 8].reject(&:even?) # => [3, 5, 7]
