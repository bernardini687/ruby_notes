# Make a hash that stores the count of the instances of each word in a sentence

sentence = "Once upon a time in a land far far away"

def word_count(string)
  words, hash = string.split(" "), {}
  words.each do |word|
    unless hash.key?(word.to_sym)
      count = words.count(word)
      hash[word.to_sym] = count
    end
  end
  hash
end

def simpler_word_count(string)
  words, count = string.split, Hash.new(0)
  words.each { |word| count[word.to_sym] += 1 }
  count
end

p word_count(sentence)
# => {:Once=>1, :upon=>1, :a=>2, :time=>1, :in=>1, :land=>1, :far=>2, :away=>1}

# p simpler_word_count(sentence)
# => {:Once=>1, :upon=>1, :a=>2, :time=>1, :in=>1, :land=>1, :far=>2, :away=>1}
