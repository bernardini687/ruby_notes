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
