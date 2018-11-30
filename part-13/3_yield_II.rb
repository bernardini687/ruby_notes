# Use block_given? to run 'yield' only if a block is given

def hello
  puts "There's such a difference between us"
  puts "And a million miles"
  puts yield if block_given?
  puts "I must have called a thousand times"
end

hello { "Hello from the other side" }

puts # Yield arguments

def tac(sentence)
  print " tac: ".upcase
  puts yield sentence
end

def ping(sentence)
  print "ping: ".upcase
  puts yield sentence
end

tac("I'm afraid I have to take a nap.") { |txt| txt }
ping("Me too.") { |txt| txt }
# =>  TAC: I'm afraid I have to take a nap.
# => PING: Me too.

puts

def nums_eval(num1, num2, num3)
  yield num1, num2, num3
end

op1 = nums_eval(3, 5, 7) { |num1, num2, num3| (num1 * num2) / num3 }
op2 = nums_eval(3, 5, 7) { |num1, num2, num3| (num1 * num3) / num2 }
p op1 # => 2
p op2 # => 4
