# 3 methods that know the hell out of counting

3.downto(1) { |current_num| puts "...#{current_num}" }
puts "LIFT-OFF! We have a lift-off!"
# => ...3
# => ...2
# => ...1
# => LIFT-OFF! We have a lift-off!
puts # The temporary variable is used, so it makes sense to include it

-2.upto(0) { puts "Negative numbers are fine." }
puts # An example where we don't need the temporary variable

# Count from a number to the number of the first argument in steps of the second argument
3.step(30, 3) { |n| puts n } # Puts 10 multiples of 3
