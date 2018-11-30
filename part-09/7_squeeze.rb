# .squeeze removes adiacent duplicates of characters in a string

narcoleptic_on_keyboard = "Hiiii!!! my    naame is Mr. Daydreammmmm"
puts narcoleptic_on_keyboard.squeeze
# => Hi my name is Mr. Daydream

# There's also the bang method equivalent .squeeze!

narcoleptic_on_keyboard.squeeze!(" am!") # Focus on " ", "a", "m", "!"
puts narcoleptic_on_keyboard
# => Hiiii! my name is Mr. Daydream

def custom_squeeze(string)
  squeezed = "" # Set a new empty string. Will only take characters different from the following characters
  chars = string.chars # Set an array of each characters of the argument string
  chars.each_with_index do |char, index|
    if char == chars[index + 1]
      next # Ignore current character if its equal to the next one
    else
      squeezed << char # Add current character in the string
    end
  end
  squeezed
end
puts

puts custom_squeeze("Thoor")
# => Thor

puts "Thoor".squeeze
# => Thor
