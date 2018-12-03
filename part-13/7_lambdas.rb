def to_dollars euros
  euros * 1.14 if euros.is_a? Numeric
end

def to_pesos euros
  euros * 22.76 if euros.is_a? Numeric
end

def to_rupees euros
  euros * 79.71 if euros.is_a? Numeric
end

p to_dollars 1000 # => 1140.0
p to_pesos 1000   # => 22760.0
p to_rupees 1000  # => 79710.0

puts

def convertion(euros, currency)
  yield(euros, currency) if euros.is_a? Numeric
end

p convertion(1000, 1.14) { |euros, currency| euros * currency }  # => 1140.0
p convertion(1000, 22.76) { |euros, currency| euros * currency } # => 22760.0
p convertion(1000, 79.71) { |euros, currency| euros * currency } # => 79710.0

puts

to_usd = lambda { |euros| euros * 1.14 }
to_mxn = lambda { |euros| euros * 22.76 }
to_inr = lambda { |euros| euros * 79.71 }

def convert(euros, currency_lambda)
  currency_lambda.call euros if euros.is_a? Numeric
end

p convert(1000, to_usd) # => 1140.0
p convert(1000, to_mxn) # => 22760.0
p convert(1000, to_inr) # => 79710.0

p [200, 1600, 12800].map &to_usd
# => [227.99999999999997, 1823.9999999999998, 14591.999999999998]
