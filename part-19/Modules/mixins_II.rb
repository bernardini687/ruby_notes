class GoodPerson
  include Enumerable
  attr_reader :virtues # This generates the getter method .virtues

  def initialize
    @virtues = []
  end

  def add_virtue virtue
    virtues << virtue # self.virtues << virtue
  end

  # Set .each right to have proper access to every other mixin method
  # What it is that we are enumerating over?

  def each
    virtues.each do |virtue|
      yield virtue
    end
  end
end

fook = GoodPerson.new

fook.add_virtue "moderation"
fook.add_virtue "humanity"

p fook.virtues
# => ["moderation", "humanity"]

fook.each { |virtue| puts "Fook embraced #{virtue}" }
# => Fook embraced moderation
# => Fook embraced humanity

p fook.map { |virtue| virtue.upcase }
# => ["MODERATION", "HUMANITY"]

p fook.select { |virtue| virtue.include? "human" }
# => ["humanity"]

p fook.any? { |virtue| virtue.length > 9 } # => true
p fook.all? { |virtue| virtue.length > 9 } # => false
