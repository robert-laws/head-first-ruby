# Initializing Instances - Basics

class Employee
  attr_reader :name, :salary

  def name=(value)
    if value == ""
      raise "Name cannot be blank!"
    end
    @name = value
  end

  def salary=(value)
    if value < 0
      raise "Salary of #{value} is not valid"
    end
    @salary = value
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = format("$%0.2f", ((@salary.to_f / 365) * 14))
    puts "Pay for this period is #{pay_for_period}"
  end
end

bob = Employee.new
bob.name = "Bob"
bob.salary = 40000

bob.print_pay_stub

# puts format("%.2f", 4.46423)

hal = Employee.new
hal.print_pay_stub
