class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
end

class Cat < Animal
  def sayName
    puts "hello my name is #{name}"
  end
end

mycat = Cat.new('murka')

puts mycat.name
mycat.sayName

 