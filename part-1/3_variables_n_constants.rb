# Variables are assigned with a single equal sign

nickname = "Oscarvocado"
last_name = "Bernardini"
age = 25 - 1
nice_guy = true

print nickname, " ", last_name # Print a variable, a space, and a variable
# => Oscarvocado Bernardini
puts # Output a new line after the printing above

p age
print "Is he a nice guy? "
p nice_guy
# => 24
# => Is he a nice guy? true

# Variables changes, as people do
nickname = "Foscar"
age = (25 - 1) * 2
nice_guy = false

print nickname
# => Foscar
puts

p age
print "Is he a nice guy? "
p nice_guy
# => 48
# => Is he a nice guy? false

# Constants, instead, shouldn't be changed. If you try to change them, Ruby will output an error, but permit it

EARTH = "flat" # They are UPCASE
print "The Earth is #{EARTH}, obviously!" # Just kidding
