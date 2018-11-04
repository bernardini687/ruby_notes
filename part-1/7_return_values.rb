# When return is typed, the method stops right there, even if there are more lines inside the method

def add_two_n(n1, n2)
  puts "Doing this difficult addition for you, bro:"
  return "Kidding." # This isn't the last line so it needs an explicit return
  n1 + n2 # The last line of a method is implicitly returned
end

p add_two_n(4, 4) # Calling the method defined above on two integers
# => Doing this difficult addition for you, bro:
# => "Kidding."
# It doesn't reach the 'n1 + n2' line
puts

def nothing
end

p nothing
# => nil # 'nil' is a NilClass object that represents the absence of a value
puts

def return_something
  puts "yo"
end

p return_something
# => yo
# => nil
# 'print' and 'puts' always return 'nil'
