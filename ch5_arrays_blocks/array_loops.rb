# looping over an array

prices = [2, 8, 15, 29, 35]

# p prices

# index = 0
# while index < prices.length
#   p prices[index]
#   index += 1
# end

def total(prices)
  total = 0
  i = 0
  while i < prices.length
    total += prices[i]
    i += 1
  end
  total
end

def discounts(prices)
  i = 0
  while i < prices.length
    amount_off = prices[i] / 3.0
    puts format("$%0.2f", amount_off)
    i += 1
  end
end

# discounts(prices)

# puts format("$%i", total(prices))

def multi_items(array, operation)
  if operation == "total" || operation == "refund"
    amount = 0
  end
  index = 0
  while index < array.length
    if operation == "total"
      amount += array[index]
    elsif operation == "refund"
      amount -= array[index]
    elsif operation == "show discounts"
      amount_off = array[index] / 3.0
      puts format("Your discount: $%0.2f", amount_off)
    end
    index += 1
  end
  if operation == "total" || operation == "refund"
    puts amount
  end
end

multi_items(prices, "total")
