# File.open("bar.txt", "w") { |file| file.puts "Yo." }

# File.rename("bar.txt", "baz.txt")

if File.exist? "baz.txt"
  File.delete "baz.txt"
end
