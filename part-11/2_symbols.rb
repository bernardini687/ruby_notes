# Symbols are Ruby objects that are similar to strings, but lighter on memory
# They are typically used as keys in hashes

puts :yo        # => yo
puts "yo man"   # => yo man

p :ciao         # => :ciao
p "ciao"        # => "ciao"

p :cool.class   # => Symbol
p "beans".class # => String

p :hot.to_s     # => "hot"
p "nuts".to_sym # => :nuts

# .methods returns an array of symbols for methods avaiable on the given object
p :bye.methods        # => [:<=>, :==, :===, :=~, :[], :empty?, :inspect, [...]]
p :hi.methods.length  # => 79
p "yo".methods.length # => 170

cat_1 = {
  :name       => "Sophie",
  :age        => 11,
  :attributes => %w[fat sweet grateful]
}

p cat_1[:age]           # => 11
p cat_1[:attributes][2] # => "grateful"

# There's a shorter syntax for hashes that holds symbols as keys

cat_2 = {
  name: "Margot",
  age: 11,
  attributes: %w[beautiful nice bipolar]
}

p cat_2[:name]          # => "Margot"
p cat_2[:attributes][2] # => "bipolar"
