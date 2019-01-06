class Array
  def sum
    total = 0
    self.each { |element| total += element if element.is_a?(Numeric) }
    total
  end
end

p [1, 7, "miao", :bella, 2].sum # => 10

class String
  def alphabet_sum
    alphabet = ("a".."z").to_a
    sum = 0
    self.downcase.each_char do |chr|
      if alphabet.include?(chr)
        numeric_value = alphabet.index(chr) + 1
        sum += numeric_value
      end
    end
    sum
  end
end

p "hello world".alphabet_sum # => 124
