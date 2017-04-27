# new employee class - combining features

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

class SalariedEmployee < Employee
  attr_reader :salary
  def initialize(name = "Unknown", salary = 0.0)
    super(name)
    self.salary = salary
  end
  def salary=(salary)
    if salary < 0
      raise "Salary of #{salary} cannot be negative"
    end
    @salary = salary
  end
  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("$%0.2f", pay_for_period)
    puts "Pay for period: #{formatted_pay}"
  end
end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week
  def initialize(name = "Unknown", hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
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

salaried_employee = SalariedEmployee.new("", 50000)
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new("Kal Kool", 18.5, 37.5)
hourly_employee.print_pay_stub
