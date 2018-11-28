# .to_h
#
the_xx = [
  [:guitar, "Romy Croft"],
  [:bass, "Oliver Sim"],
  [:beats, "Jamie Smith"]
]
#
p xx = the_xx.to_h
# => {:guitar=>"Romy Croft", :bass=>"Oliver Sim", :beats=>"Jamie Smith"}

# .sort on Hash returns multi-dimensional Array of alphabetically sorted keys
#
p xx.sort
# => [[:bass, "Oliver Sim"], [:beats, "Jamie Smith"], [:guitar, "Romy Croft"]]
#
p xx.sort.reverse
# => [[:guitar, "Romy Croft"], [:beats, "Jamie Smith"], [:bass, "Oliver Sim"]]

# .sort_by accepts a block so you can sort alphabetically by the value
#
p xx.sort_by { |role, name| name }
# => [[:beats, "Jamie Smith"], [:bass, "Oliver Sim"], [:guitar, "Romy Croft"]]
#
p xx.sort_by { |role, name| name }.reverse
# => [[:guitar, "Romy Croft"], [:bass, "Oliver Sim"], [:beats, "Jamie Smith"]]
