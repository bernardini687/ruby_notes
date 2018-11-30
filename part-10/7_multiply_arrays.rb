# The asterisk can be use to multiply strings and arrays too

p 3 * 3                 # => 9
p "Charlie Chaplin" * 3 # => "Charlie ChaplinCharlie ChaplinCharlie Chaplin"
p [3, 2, 1] * 3         # => [3, 2, 1, 3, 2, 1, 3, 2, 1]

def custom_multiply(arr, num)
  result, i = [], 0
  while i < num
    arr.each { |element| result << element }
    i += 1
  end
  result
end

def shortr_custom_mult(arr, num)
  result = []
  num.times { arr.each { |elem| result << elem } }
  result
end

p custom_multiply([3, 5, 7], 3)
# => [3, 5, 7, 3, 5, 7, 3, 5, 7]
p shortr_custom_mult(["Sophie", "Margot", "Leo"], 2)
# => ["Sophie", "Margot", "Leo", "Sophie", "Margot", "Leo"]
