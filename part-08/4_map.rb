# .map

foo = [2, 4, 6, 8]
bar = [] # If I want a new array, with 'each', I have to create one first
#
foo.each { |x| bar << x * x }
p bar

puts     # 'map' or 'collect' returns an array already
#
miao = foo.map { |x| x * x }
p miao

puts     # 'print' and 'puts' returns 'nil' so avoid that in 'map' blocks
#
baz = foo.map { |x| puts x * x }
p baz

puts

challenge = [3, 8, 11, 15, 89]
#
def cube(arr)
  arr.map { |e| e ** 3 }
end
#
p cube(challenge)

# ROT13

secret_messages = ["uryyb", "Trg", "Puvpxra"]

def rot13(arr)
  arr.map do |string|
    string.tr('A-Za-z', 'N-ZA-Mn-za-m')
  end
end

p rot13(secret_messages) # => ["hello", "Get", "Chicken"]
