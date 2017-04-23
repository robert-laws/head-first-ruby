# OOP approach to animal classes

class Bird
  def talk(name)
    puts "#{name} says Chirp!"
  end
  def move(name, destination)
    puts "#{name} is flying to #{destination}"
  end
end

class Dog
  def talk(name)
    puts "#{name} says Bark!"
  end
  def move(destination)
    puts "#{name} is walking to #{destination}"
  end
end

tweety = Bird.new
fido = Dog.new

tweety.talk
tweety.move("nest")
