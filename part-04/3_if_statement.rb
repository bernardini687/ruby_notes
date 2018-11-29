# A few examples of if statements

n = 20

if n < 50
  puts "Faaar away!"
elsif n == 50
  puts "Got it!"
elsif n > 50
  puts "Not even close..."
end

# Faaar away!
puts

def odd_or_even(n)
  if n.odd?
    "Mmh, that's kinda odd!" # If true, this is the last line Ruby evaluetes (so, implicit return)
  else
    "Even as a wood board!" # Otherwise this will be the last evaluated line
  end
end

puts odd_or_even(n)
# => Mmh, that's kinda odd!
puts odd_or_even(n.next)
# => Even as a wood board!
puts

# Setup
age = 24
ticket = "special seat" # A string is always evaluated to be true
id = true

if age > 18 && ticket && id # In order for this statement to be true, everything on && sides must also be true
  puts "Yo, be my guest!"
else
  puts "Sorry, go somewhere else."
end

# => Yo, be my guest!
