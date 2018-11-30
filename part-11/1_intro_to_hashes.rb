# A hash is a data structure that stores key-value pairs, like a dictionary
# Hash keys and hash values can be objects of any kind
# Hash keys must be unique
# Values are extracted by their keys. If an ordered sequence is needed, an array is ideal

empty_hash = {}
p empty_hash        # => {}
p empty_hash.class  # => Hash

empty_array = Array.new
p empty_array       # => []
p empty_array.class # => Array

p Hash.new == []    # => false
p Hash.new == {}    # => true

my_cats_age = {
  "Sophie" => 11,
  "Margot" => 11,
  "Leo"    => 7
}

# To extract a value you call its key as if it was the index of an array

p my_cats_age.class     # => Hash
p my_cats_age["Margot"] # => 11
p my_cats_age["Skurup"] # => nil
