class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

puts "Test Cases:"
puts "\nBob:"
bob_attributes = { name: "Bob", hair_color: "Brown" }
bob = Person.new(bob_attributes)

puts "\nbob: ", bob

puts "\nSusan:"
susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }
susan = Person.new(susan_attributes)

puts "\nsusan: ", susan
