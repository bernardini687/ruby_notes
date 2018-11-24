string = "yo"
fixnum = 3
float = 3.14
array = [1, 2, 3, 4]
range = 1..4
falseclass = false
trueclass = true
nilclass = nil
bignum = 1_000_000_000_000_000_000_000_000_000

p string.class     # => String
p fixnum.class     # => Fixnum
p float.class      # => Float
p array.class      # => Array
p range.class      # => Range
p falseclass.class # => FalseClass
p trueclass.class  # => TrueClass
p nilclass.class   # => NilClass
p bignum.class     # => Bignum

puts

p string.is_a?(Fixnum) # => false
p string.is_a?(Bignum) # => false
p string.is_a?(String) # => true

puts

if string.is_a?(Array)
  string.each { |e| p e }    # Nope!
end

if array.is_a?(Array)
  array.each { |e| print e } # => 1234
end

puts
