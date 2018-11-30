# Procs are objects that stores a block

capitalizer = Proc.new { |element| element.capitalize }

a, b, c = %w[foo bar baz], %w[oof rab zab], %w[ciao hi aloha]

aa = a.map(&capitalizer)
bb = b.map(&capitalizer)
cc =c.map(&capitalizer)

p aa, bb, cc
# => ["Foo", "Bar", "Baz"]
#    ["Oof", "Rab", "Zab"]
#    ["Ciao", "Hi", "Aloha"]

# Refactoring...
#
mother = [a, b, c]

x, y, z = mother.map { |array| array.map(&capitalizer) }

ages = [14, 28, 72, 24, 30, 83]
is_exploiting = Proc.new { |age| age > 40 }
p ages.select(&is_exploiting)
# => [72, 83]
