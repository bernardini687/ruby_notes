class Hash
  def reveal_dupes_values
    values = []
    dupes = []
    self.each_value do |value|
      values.include?(value) ? dupes << value : values << value
    end
    dupes.uniq
  end
end

scores = {a: 30, b: 30, c: 2, d: 93, e: 15, f: 2, g: 48, h: 15, i: 15, j: 2}
p scores.reveal_dupes_values  # => [30, 2, 15]

class Fixnum
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end

  def custom_time
    i = 0
    while i < self
      yield(i + 1)
      i += 1
    end
  end
end

p Time.now + 24.minutes       # => 2019-01-07 09:41:54 +0100
p Time.now + 8.hours          # => 2019-01-07 17:17:54 +0100
p Time.now + 10.days          # => 2019-01-17 09:17:54 +0100

5.times { |x| print x }       # => 01234
puts
5.custom_time { |x| print x } # => 12345
