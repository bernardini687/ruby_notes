# When creating a new hash with Hash.new it's possible to set a default value

boring_hash = Hash.new("default value")

boring_hash[:one] = 1
boring_hash[:two] = 2

p boring_hash[:one] # => 1
p boring_hash[:two] # => 2

p boring_hash[:ten] # => "default value"

# It's possible to change that value with .default and the following syntax

boring_hash.default = 0

p boring_hash[:six] # => 0
