# Predicate methods avaiable on a Time object

foo = Time.new(1996, 5, 7)
p foo.monday?    # => false
p foo.tuesday?   # => true

# Was it Daylight Saving Time? (spring..summer)
p foo.dst?       # => true

# Add or subtract seconds
new_year = Time.new 2017
p new_year + 60                 # A minute later
# => 2017-01-01 00:01:00 +0100

p new_year - (60 * 60)          # An hour earlier
# => 2016-12-31 23:00:00 +0100

p new_year + (60 * 60 * 24 * 3) # 3 days later
# => 2017-01-04 00:00:00 +0100

puts

def find_day_of_year_by_number(number)
  current_year = Time.new(1994, 1, 7)
  current_year += (60 * 60 * 24) until current_year.yday == number
  current_year
end

p find_day_of_year_by_number 364
# => 1994-12-30 00:00:00 +0100

puts

def since_birth(t = Time.now)
  b = Time.new(1994, 1, 7)
  i = 0
  until b.year == t.year && b.month == t.month && b.day && t.day
    b += (60 * 60 * 24)
    i += 1
  end
  i
end

p since_birth # => 9094
