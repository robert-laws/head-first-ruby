# overriding method in a subclass

class Animal
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name cannot be blank"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "Age of #{value} is not valid"
    end
    @age = value
  end

  def talk
    puts "#{@name} says hello"
  end

  def move(place)
    puts "#{@name} moved to #{place}"
  end
end

class Dog < Animal
  def talk
    super
    puts "Dog named #{@name} is now #{@age} years old."
  end

  def move(place)
    puts "#{@name} barks"
    super(place) # just using super will work too - without explicitly specifying the argument
  end
end

class Cat < Animal
  def talk
    greet = super
    greet
  end
end


fido = Dog.new
fido.name = "Fido"
fido.age = 4
fido.talk
fido.move("yard")

felix = Cat.new
felix.name = "Felix"
felix.talk

puts Dog.superclass
puts Animal.superclass
