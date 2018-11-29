# When setting a parameter to a value as you are defining a new method, that value is used whenever that argument isn't set later

def plants_numbers(type, number = 2) # 2 is the default value for number
  puts "Planting #{number} #{type}..."
end

plants_numbers("pines")       # => Planting 2 pines...
plants_numbers("orchids", 4)  # => Planting 4 orchids...

def add(x, y)
  x + y
end

def sub(x, y)
  x - y
end

def mul(x, y)
  x * y
end

def calculator(x, y, op = "add") # "add" is the default value for op
  case op
  when "add" then "Sum is #{add(x, y)}"
  when "sub" then "Difference is #{sub(x, y)}"
  when "mul" then "Product is #{mul(x, y)}"
  else "No-can-do's-ville, baby doll."
  end
end

puts calculator(2, 5)         # => Sum is 7
puts calculator(5, 10, "sub") # => Difference is -5
puts calculator(5, 10, "mul") # => Product is 50
puts calculator(3, 1, "yo")   # => No-can-do's-ville, baby doll.
