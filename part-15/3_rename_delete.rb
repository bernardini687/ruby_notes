# File.open("part-15/bar.txt", "w") { |file| file.puts "Yo." }

# File.rename("part-15/bar.txt", "part-15/baz.txt")

if File.exist? "part-15/baz.txt"
  File.delete "part-15/baz.txt"
end
