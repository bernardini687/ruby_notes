# A module is a toolkit, it groups methods and constants

module LengthConversions

  WEBSITE =  "https://www.angelo.edu"

  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_thumb(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

puts LengthConversions.miles_to_feet 100   # => 528000
puts LengthConversions.miles_to_inches 200 # => 12672000
puts LengthConversions.miles_to_thumb 300  # => 48280320.0
