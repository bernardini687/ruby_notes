bday_o = Time.new(1994, 1, 7)
bday_t = Time.new(1995, 2, 7)
bday_r = Time.new(1996, 5, 7)

p bday_o > bday_r                 # => false
p bday_t.between?(bday_o, bday_r) # => true
p Time.now > bday_r               # => true
