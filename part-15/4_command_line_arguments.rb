# ARGV is a special array for input coming from the command line, as strings

ARGV.each do |argument|
  n = argument.to_i
  puts "The square of #{n} is #{n * n}"
end
