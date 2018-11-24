# To change an element in an array you assing a new valye to an index

cat_names = %w[Colorado Mucci Sophie Molly Margot Leo Strizzi Tigro Melville]
p cat_names.length        # => 9

cat_names[0] = "Color"    # Change "Colorado" to "Color"
p cat_names.size          # => 9

cat_names[11] = "Turlulù" # Adds a value at index 11, fill the holes with nils
p cat_names.count         # => 12
p cat_names.count(nil)    # How many nil? => 2

cat_names[9, 2] = %w[Leone Papillon] # Replace the 2 nils with 2 values

cat_names[9..11] = "Skurup"          # Replace the last 3 values with "Skurup"
p cat_names.size                     # => 10

p cat_names.first                    # => "Color"
p cat_names.last                     # => "Skurup"
p cat_names.first(1)                 # => ["Color"]
p cat_names.last(3)                  # => ["Tigro", "Melville", "Skurup"]
p cat_names.first(100)               # Stops at last valid index
puts

# Challenge

numbers = [4, 8, 15, 16, 23, 42]

def custom_first(arr, num = 0)
  num == 0 ? arr[0] : arr[0...num]
end

def custom_last(arr, num = 0)
  num == 0 ? arr[-1] : arr[-num..-1]
end

p custom_first(numbers)    # => 4
p custom_first(numbers, 3) # => [4, 8, 15]
p numbers.first            # => 4
p numbers.first(3)         # => [4, 8, 15]
puts

p custom_last(numbers)     # => 42
p custom_last(numbers, 2)  # => [23, 42]
p numbers.last             # => 42
p numbers.last(2)          # => [23, 42]
