class OlympicMedal
  include Comparable
  # <, <=, ==, >, >=, !=, <=>, .between?

  MEDAL_VALUES = { gold: 3, silver: 2, bronze: 1 }

  # The keys of the constant will be used to define the material
  # We need to expose this data in order to access 3, 2 or 1
  attr_reader :material

  def initialize(material, weight)
    @material = material
    @weight = weight
  end

  # We need to tell Ruby HOW to compare the objects of this class

  def <=> other
    if MEDAL_VALUES[material] < MEDAL_VALUES[other.material]
      -1
    elsif MEDAL_VALUES[material] == MEDAL_VALUES[other.material]
      0
    else
      1
    end
  end
end

bronze = OlympicMedal.new(:bronze, 5)
silver = OlympicMedal.new(:silver, 10)
gold = OlympicMedal.new(:gold, 3)

p bronze > silver               # => false
p gold > silver                 # => true
p silver == silver              # => true
p silver != bronze              # => true
p silver.between?(bronze, gold) # => true
