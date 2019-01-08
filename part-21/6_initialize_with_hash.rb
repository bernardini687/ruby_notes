class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, details = {})
    defaults = {
      age: "Miao",
      occupation: "Miao",
      hobby: "Miao",
      birthplace: "Miao",
    }
    defaults.merge!(details)
    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

info = {
  hobby: "Fishing",
  birthplace: "Kentucky",
  age: 53
}
senator = Candidate.new("Mr. Smith", info)
p senator.occupation   # => "Miao"
p senator.hobby        # => "Fishing"
p senator.name         # => "Mr. Smith"

president = Candidate.new("Mr. Bloom")
p president.birthplace # => "Miao"

nice_guy = Candidate.new("Ben", hobby: "Otter petting", age: 25)
p nice_guy.hobby       # => "Otter petting"
p nice_guy.age         # => 25
