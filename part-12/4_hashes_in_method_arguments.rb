# Passing a hash as an argument to a method can prevent errors due to feeding arguments in different order

def calculate_total(hash)
  tip_amount = hash[:price] * hash[:tip]
  tax_amount = hash[:price] * hash[:tax]
  (hash[:price] + tip_amount + tax_amount).round(2)
end

bill = {
  price: 9.95,
  tip: 0.25,
  tax: 0.1
}

p calculate_total(bill)
# => 13.43

# When an hash is the only or the last argument in a method call, it's possible to leave the curly braces off
p calculate_total(price: 12.24, tip: 0.35, tax: 0.07)
# => 17.38
