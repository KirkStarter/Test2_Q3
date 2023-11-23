# The Printable module provides a print_info method that outputs information about the current object using the inspect method
module Printable
  def print_info
    # Output information about the current object using the inspect method
    puts self.inspect
  end
end

# The AnimalClass class includes the Printable module
class AnimalClass
  include Printable

  # The class constructor takes the type, name and age of the animal and initialises the appropriate instance variables
  def initialize(type, name, age)
    @type = type
    @name = name
    @age = age
  end
end

# Create an object of the AnimalClass class and call the print_info method to print information about the object
obj = AnimalClass.new("Pallas", "Styopa", 8)
obj.print_info
