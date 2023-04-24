# frozen_string_literal: true

module LengthConversions
  def self.miles_to_feet(miles)
    miles * 5200
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_cm(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end
LengthConversions.miles_to_feet(100)

# Modules with identical methods
module Square
  def self.area(side)
    side * side
  end
end

module Rectangule
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159
  def self.area(radius)
    PI * radius * radius
  end
end
p Square.area(100)
p Rectangule.area(15, 12)
p Circle.area(3)
