def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

test = [1, 2, 3]
p test                                            # => [1, 2, 3]
test.each { |element| print element }             # => 123
custom_each(test) { |element| print element.next} # => 234
