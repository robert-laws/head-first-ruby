# class methods

class Employee
  attr_reader :name
  def initialize(name = "Unknown")
    self.name = name
  end
  def name=(name)
    if name == ""
      raise "Name cannot be blank"
    end
    @name = name
  end
  def print_name
    puts "Name: #{name}"
  end
end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week
  def initialize(name = "Unknown", hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def self.security_guard(name)
    HourlyEmployee.new(name, 22.75, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.5, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.75, 20)
  end

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0.0
      raise "Hourly wage cannot be negative"
    end
    @hourly_wage = hourly_wage
  end
  def hours_per_week=(hours_per_week)
    if hours_per_week < 0.0
      raise "Hours per week cannot be less than 0"
    end
    @hours_per_week = hours_per_week
  end
  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%0.2f", pay_for_period)
    puts "Pay this period: #{formatted_pay}"
  end
end

bob = HourlyEmployee.security_guard("Bob")
hal = HourlyEmployee.cashier("Hal")
kal = HourlyEmployee.janitor("Kal")

bob.print_pay_stub
hal.print_pay_stub
kal.print_pay_stub
