# each method

arr = [11, 14, 71, 12, 17, 26, 35]
#
# arr.each { |val| puts val % 4 }

def total(prices)
  amount = 0
  prices.each {|price| amount += price }
  amount
end

def refund(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  amount
end

def show_discount(prices)
  prices.each do |price|
    amount_off = price / 3.0
    puts format("Your discount: $%0.2f", amount_off)
  end
end

puts format("Total: $%0.2f", total(arr))
puts format("Total: $%0.2f", refund(arr))
show_discount(arr)