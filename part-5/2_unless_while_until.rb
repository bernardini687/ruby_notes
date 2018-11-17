# 'unless' executes if false

pw, i = "1234", 1

unless pw == "1234" # This is true, so 'else' is run
  puts "Access denied."
else
  puts "Access granted."
end
# => Access granted.

# 'while' loops as long as the condition is true

while i < 10
  print "#{i} "
  i += 1
end
# => 1 2 3 4 5 6 7 8 9

p i # => 10
# 'i' passed through the loop for the last time when it was 9, it became a 10 and the loop stopped

# 'until' loops as long as the condition is false

until i > 19
  print "#{i} "
  i += 1
end
# => 10 11 12 13 14 15 16 17 18 19

p i # => 20
