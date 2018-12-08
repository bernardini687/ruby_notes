random = Time.new 2018
p random
# => 2018-01-01 00:00:00 +0100

p random.to_s
# => "2018-01-01 00:00:00 +0100"

p random.ctime
# => "Mon Jan  1 00:00:00 2018"

# Array from Time [s, min, h, | d, m, y, | wday, yday, | dst, | timezone ]
p random.to_a
# => [0, 0, 0, 1, 1, 2018, 1, 1, false, "CET"]

# .strftime String from Time

# %a - The abbreviated weekday name (Sun)
# %b - The abbreviated month name (Jan)
# %B - The full month name (January)
# %d - Day of the month, zero-padded (01..31)
# %H - Hour of the day, 24-hour clock (00..23)
# %I - Hour of the day, 12-hour clock (01..12)
# %j - Day of the year (001..366)
# %m - Month of the year, zero-padded (01..12)
# %M - Minutes of the hour (00..59)
# %w - Day of the week (Sunday is 0, 0..6)
# %x - Preferred representation for the date alone, no time
# %Y - Year with century
# %y - Year without a century (00..99)

p Time.now.strftime "%-d %b %H:%M" # => "8 Dec 10:09"
