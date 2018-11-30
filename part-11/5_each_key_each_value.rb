# .each_key and .each_value are pretty self-explanatory

garden = {trees: 9, flowers: 82, birds: 18}

garden.each_key { |item| p item.length }
# => 5
#    7
#    5

garden.each_value { |count| p count.class }
# => Fixnum
#    Fixnum
#    Fixnum
