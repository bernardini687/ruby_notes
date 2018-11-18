# 'rand' keyword picks a random float

p rand # => 0.11497857077990115

# .round method with an argument of 2 rounds keeping 2 digits after the comma
p rand.round(2) # => 0.08

# Have 2 digits before and after the comma
p (rand * 100).round(2) # => 32.97

# From 0 to 100
p rand(101) # => 84

# From 1 to 6
p rand(1..6) # => 2
