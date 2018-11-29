title = "Mr. "
last_name = "Bean "

print title, last_name, "\n"
# => Mr. Bean

puts title + last_name
# => Mr. Bean

puts title.concat(last_name) # This overwrites the variable (title += last_name)
# => Mr. Bean
# And title now holds "Mr. Bean " instead of only "Mr. "

puts last_name.prepend(title) # (last_name += title)
# => Mr. Bean Bean
# Now last_name holds "Mr. Bean Bean "

p last_name # => "Mr. Bean Bean "
p title     # => "Mr. Bean "

title << last_name # The shovel operator '<<' is basically a shorthand .concat
p title
# => "Mr. Bean Mr. Bean Bean "
