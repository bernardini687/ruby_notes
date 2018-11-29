 # The case statement is very flexible, it can also pass multiple evaluations

 def rate_my_food(food)
   case food
   when "Steak"
     "Pass the steak sauce, that's delicious!"
   when "Sushi"
     "Pass the soy sauce, arigato!"
   when "Tacos", "Burritos", "Quesadillas" # Like so
     "Cheesy and filling, the best combo!"
   else
     "Nope."
   end
 end

puts rate_my_food("Steak")       # => Pass the steak sauce, that's delicious!
puts rate_my_food("Sushi")       # => Pass the soy sauce, arigato!
puts rate_my_food("Tacos")       # => Cheesy and filling, the best combo!
puts rate_my_food("Burritos")    # => Cheesy and filling, the best combo!
puts rate_my_food("Quesadillas") # => Cheesy and filling, the best combo!
puts rate_my_food("Snail")     # => Nope.

# This is a contracted form

def calculate_school_grade(grade)
  case grade
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  when 0..60 then "F"
  else "That's impossible!"
  end
end

p calculate_school_grade(98)  # => "A"
p calculate_school_grade(84)  # => "B"
p calculate_school_grade(71)  # => "C"
p calculate_school_grade(67)  # => "D"
p calculate_school_grade(39)  # => "F"
p calculate_school_grade(130) # => "That's impossible!"
p calculate_school_grade(-30) # => "That's impossible!"

# ! Negates. you can take advantage of this

p 1   # Anything but nil and false evaluates to true
p !1  # => false
p !!1 # => true
