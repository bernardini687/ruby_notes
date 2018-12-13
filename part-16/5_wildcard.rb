# The '.' is a wildcar, a jolly

oasis = "Today is gonna be the day
That they're gonna throw it back to you
By now you should've somehow
Realized what you gotta do
I don't believe that anybody
Feels the way I do, about you now"

puts oasis.scan /.ay/
# => day
# => day
# => way

puts oasis.scan /o..a/
# => onna
# => onna
# => otta
# => o, a

puts oasis.scan /li./
# => liz
# => lie
