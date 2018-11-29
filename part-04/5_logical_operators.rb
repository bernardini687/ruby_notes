# Tonight, our exclusive cat night club will grant free access to ANY MALE cat WITH STRIPED FUR.
# Also, any cat from the venerable age of 12 and up is welcomed, no matter gender nor fur type!

def cat_acces(gender, fur, age)
  if (gender == "male" && fur == "striped") || age >= 12
    "Welcome in!"
  else
    "Try another night, kitteh :)"
  end
end

puts cat_acces("male", "striped", 3)
puts cat_acces("male", "dotted", 9)
puts cat_acces("female", "striped", 5)
puts cat_acces("female", "dotted", 7)
puts cat_acces("female", "striped", 12)
puts cat_acces("male", "dotted", 15)
