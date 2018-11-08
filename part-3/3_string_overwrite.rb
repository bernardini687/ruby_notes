puts thing = "Fanano" # => Banano

thing[0] = "B"
puts thing            # => Fanano

thing[5] = "a"
puts thing            # => Banana

fact = "I appreciate mangos"
puts fact             # => I appreciate mangos

fact[2, 10] = "admire"
puts fact             # => I admire mangos

fact[-6..-1] = "cats"
puts fact             # => I admire cats
