# Regexp is a Ruby object, used to match patterns in String objects
# /condition goes here/

# "This is a String." =~ /this is a Regexp/
# '=~' returns the index value of the first match to the regular expression

p //.class # => Regexp

captain_obvious = "This is a String."

p captain_obvious =~ /T/  # => 0

# Special characters can have different meaning in a regular expression

p captain_obvious =~ /./  # => 0

# The dot '.' inside // means 'any character at all'

p captain_obvious =~ /b/  # => nil

p captain_obvious =~ /is/ # => 2
