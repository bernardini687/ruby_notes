class Gadget

  attr_reader :production_number
  attr_accessor :username

  def initialize(username, password) # This is private by design
    @username = username
    @password = password
    @production_number = generate_production_number
    # When initialize is called, all other instance methods are already avaiable
  end

  def to_s
    "Gadget #{production_number} has the username #{username}.
    It is made from the #{self.class} class and it
    has the ID #{object_id}."
  end

  def password=(new_password) # This is a custom setter method
    @password = new_password if validate_password(new_password)
  end

  # Every method below the 'private' keyword will be made uncallable
  # phone.generate_production_number will throw an error
  private

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    year = Time.now.year.to_s
    5.times { year << alphabet.sample }
    "#{start_digits}-#{year}-#{end_digits}"
  end

  def validate_password(key)
    key.is_a?(String) && key.length >= 6 && key =~ /\d/
  end
end

phone = Gadget.new("user", "password123")
p phone.production_number      # => "29290-2019GCKBD-77626"

phone.password = 123           # Not validated so not updated

phone.password = "miaomiao321" # New password is valid and updated
