# usage of the initialize method

# class MyClass
#   def initialize
#     puts "setting up"
#   end
# end
#
# item = MyClass.new

class Employee
  attr_reader :name, :salary

  def name=(value)
    if value == ""
      raise "Name cannot be blank"
    end
    @name = value
  end

  def salary=(value)
    if value < 0
      raise "Salary of #{value} is not valid"
    end
    @salary = value
  end

  def initialize(name = "Unknown", salary = 0.0)
    self.name = name
    self.salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format("$%0.2f", pay_for_period)
    puts "Pay: #{formatted_pay}"
  end
end

emp = Employee.new("Kal", 40000)
emp.print_pay_stub
