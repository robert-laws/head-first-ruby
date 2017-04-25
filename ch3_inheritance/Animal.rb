# Animal superclass and animal types subclasses

class Animal
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name is blank"
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
    puts "#{@name} says Sqwak"
  end

  def move(destination)
    puts "#{@name} moves to #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old"
  end
end

class Dog < Animal
  def talk
    puts "#{@name} say Arf"
  end
end

class Bird < Animal
  def move(destination)
    super
    puts "The travel method is flight"
  end
end

class Cat < Animal

end

tweety = Bird.new
tweety.name = "Tweety"
tweety.move("nest")