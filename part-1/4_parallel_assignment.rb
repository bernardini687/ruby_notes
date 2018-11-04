# We are assigning each variable on its own line
x = 1
y = 2
z = 3

# And outputting them calling 'p' each single time
p x # => 1
p y # => 2
p z # => 3

# Here comes the more succint Parallel Assignment
a, b, c, = 10, 20, 30

# And 'p' is called on each variable in a single line
p a, b, c
# => 10
# => 20
# => 30

# And here comes the Swapping Values Trick
a, b, c = c, b, a

# Which reverse the values of the variables
p a, b, c
# => 30
# => 20
# => 10

# Ruby evaluates first what happens on the right side
age = 23 + 1 # 23 + 1 is first evaluated as 24 and then assigned to age
p age # => 24
