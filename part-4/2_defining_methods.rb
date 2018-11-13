# It's possible to define a custom method within 'def' and 'end' keywords

def be_mindful
  puts "Be present", "Be useful", "Be grateful", "Be immersed"
end

# The method name will access the code defined in the method definition
be_mindful
# => Be present
#    Be useful
#    Be grateful
#    Be immersed

# Conditional assignment
do_not_change_me = "ciao"
puts do_not_change_me # => ciao
do_not_change_me ||= "miao" # Assign if not already assigned
puts do_not_change_me # => ciao

# Variables inside methods are valid only in the context of the method
foo = 3 # Defining variable foo to a 3

def goo
  foo = 5
  p 5
end

goo # Calling the goo method that outputs the local variable foo
# => 5
p foo # Outside the method, foo is still 3
# => 3

# You can define methods with a set of arbitrary arguments
def wow_num(num, adjective)
  puts "#{num} is #{adjective}.", "Yeah, #{num} is cool!"
  puts
end

wow_num(3, "nice")
# => 3 is nice.
#    Yeah, 3 is cool!
#
wow_num(5, "fabulous")
# => 5 is fabulous.
#    Yeah, 5 is cool!
#
wow_num(8, "simple")
# => 8 is simple.
#    Yeah, 8 is cool!
#
