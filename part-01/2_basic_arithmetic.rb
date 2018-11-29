# Basic operators

p 3 + 4            # => 7
p 10 - 12          # => -12
p 4 * 8            # => 32
p "school" + "bus" # => "schoolbus"
p 10 / 5           # => 2

# Dividing a Fixnum object by another Fixnum always returns a Fixnum
p 12 / 5           # => 2

# At least one of them must be a Float if you want a Float result
p 12.0 / 5         # => 2.4

# Get the remainder, or modulo return
p 5 % 2            # => 1
p 5 % 3            # => 2
p 6 % 2            # => 0
puts

# Exponents
p 3 ** 3           # => 27
# Means
p 3 * 3 * 3        # => 27

# Omitting the 0 before the dot in Floats is an error, beware
p 0.5 + 2          # => 2.5
