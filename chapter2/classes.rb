# class definitions

class Bird
  def talk
    puts "Tweet"
  end

  def fly(destination)
    puts "Flying to #{destination}"
  end
end

birdy = Bird.new
tweety = Bird.new

birdy.talk
birdy.fly("home")
