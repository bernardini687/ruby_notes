# Time.now is an alias of Time.new but it doesn't accept arguments
# Calling Time.new with 1..6 arguments will return a custom time
# Assigning Time.now to a variable will save the moment in which Ruby runs

p Time.new(2017)
# => 2017-01-01 00:00:00 +0100

p Time.new(2018, 2)
# => 2017-02-01 00:00:00 +0100

p Time.new(2019, 5, 7, 20, 12, 34)
# => 2019-05-07 20:12:34 +0200

today = Time.now
p today.year  # => 1018
p today.month # => 12
p today.day   # => 7

p today.hour  # => 8
p today.min   # => 41
p today.sec   # => 6

# Which day of the year? .yday
p today.yday  # => 341

# Which day of the week? .wday (Sunday is 0)
p today.wday  # => 5
