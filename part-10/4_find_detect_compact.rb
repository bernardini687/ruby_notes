# .find and .detect are synonyms. They return the first element for which the block evaluates to true

neighborhood_cats = %w[sophie margot leo firmino neve maco leo molly papi leo]

# .select returns a new array with any element the block evaluates to true
leos = neighborhood_cats.select { |name| name == "leo" }
p leos.class # => Array
p leos # => ["leo", "leo", "leo"]
p leos.size # => 3

first_leo = neighborhood_cats.find { |name| name == "leo" }
p first_leo.class # => String
p first_leo # => "leo"

neighborhood_cats_ages = [11, 11, 7, 5, 4, 6, 1, 11, 1, 1]

# Find the first age that is less than 10
p neighborhood_cats_ages.find { |age| age < 10 } # => 7

# Find the last age that is less than 10
p neighborhood_cats_ages.reverse.find { |age| age < 10 } # => 1
puts

# .compact returns a new array polished from any 'nil' element
# .compact! modify the same array clearing it from any 'nil' element

nuts = ["walnuts", nil, nil, "macademia", "almonds", nil]
p nuts.compact # => ["walnuts", "macademia", "almonds"]

def custom_compact(arr)
  compact_arr = []
  arr.each { |elem| compact_arr << elem unless elem.nil? }
  compact_arr
end

p custom_compact(nuts)
