require 'time'

# When String to Time conversion, require 'time' grant access to new methods

# Day, Month and Year convention
puts Time.parse "12-5-2015" # => 2015-05-12 00:00:00 +0200

# Or, tell Ruby how to interpret the String
puts Time.strptime("12-25-2015", "%m-%d-%Y") # => 2015-12-25 00:00:00 +0100
