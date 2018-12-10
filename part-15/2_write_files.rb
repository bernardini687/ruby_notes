# Default .open second argument is "r" for "read"
# Type "w" for "write"

File.open("part-15/new.txt", "w") do |file|
  file.puts "I need to think hard about this."
  file.puts "Think hard about what?"
  file.write "Whether to add a line break or not!"
  file.puts "Apparently you didn't..."
end

# Type "a" for "append" and avoid overwriting

File.open("part-15/new.txt", "a") do |file|
  file.puts "Yey."
end
