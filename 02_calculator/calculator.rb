def add(num_1,num_2)
  return num_1 + num_2
end

def subtract(num_1,num_2)
  return num_1 - num_2
end

def sum(nums)

  result = 0

  nums.each do |a|
    result += a
  end

  return result

end

def multiply(*nums_to_multiply)

  length = nums_to_multiply.length

  if(length == 0)
    return 0
  elsif (length == 1)
    return nums_to_multiply[0]
  end

  result = nums_to_multiply[0]

  (1..length-1).each do |a|
    result *= nums_to_multiply[a]
  end

  return result

end

def power(num_base,num_power)
  return num_base ** num_power
end

def factorial(num)

  if(num == 0)
    return 1
  end

  result = num

  num -= 1
  while(num > 0)
    result *= num
    num -= 1
  end

  return result

end
