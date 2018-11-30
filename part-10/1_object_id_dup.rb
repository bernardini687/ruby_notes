# New objects has a unique ID when they occupy a specific space in memory

marimba = "Cool"
flute = "Cool"

# Same output
p marimba #=> "Cool"
p flute   #=> "Cool"

# But different ID
p marimba.object_id == flute.object_id # => false

banana = marimba # This points two different variables to the same object

p banana.object_id == marimba.object_id # => true
p banana.object_id == flute.object_id # => false

# Changing 'banana' will also affect 'marimba'
banana[0] = "F"
p marimba # => "Fool"

# .dup makes a copy of an object, with a different ID
potato = flute.dup
potato[3] = "p"
p flute # => "Cool"
p potato # => "Coop"
