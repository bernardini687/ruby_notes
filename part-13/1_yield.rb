# 'yield' is a keyword that tells a method to execute the code of an external block before moving forward

def test
  print 1
  yield
  puts 3
end

test { print 2 } # => 123

def test2
  print 3
  print yield
  puts 1
end

test2 { 2 } # => 321

def test3
  x = yield
  puts "Ciao, #{x}!"
end

test3 { "Mario" } # => Ciao, Mario!
