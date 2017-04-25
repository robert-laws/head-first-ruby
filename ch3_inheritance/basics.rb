# chapter 3 - Inheritance Basics

# superclass for all motor vehicles
class Vehicle
  attr_accessor :odometer, :gas_used

  def milage
    @odometer / @gas_used
  end

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Honk!"
  end

  def steer
    puts "Turn front wheels"
  end
end

class Car < Vehicle

end

class Truck < Vehicle
  attr_accessor :cargo_load

  def load_bed(contents)
    puts "Securiing #{contents} in the truck bed"
    @cargo = contents
  end
end

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel"
  end
end

small_car = Car.new
small_car.accelerate

cycle = Motorcycle.new
cycle.steer

truck = Truck.new.steer


