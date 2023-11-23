# The Printable module provides a print_info method that prints information about the object
module Printable
  def print_info
    puts "Information about the object:"

    # Go through all the instance variables and output their values
    instance_variables.each do |variable|
      value = instance_variable_get(variable)
      puts "#{variable}: #{value}"
    end
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
