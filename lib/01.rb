# Create a simple calculator that first asks the user what method they would like to
# use (addition, subtraction, multiplication, division) and then asks the user
# for two numbers, returning the result of the method with the two numbers.
# Here is a sample prompt:

# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9

def calculator()
  puts "What calculation would you like to do? (add, sub, mult, div)"
  calculation = gets.chomp
  puts "What is number 1?"
  num1 = gets.chomp
  puts "What is number 2?"
  num2 = gets.chomp

  if calculation == "add"
    result = num1.to_i + num2.to_i
  elsif calculation == "sub"
    result = num1.to_i - num2.to_i
  elsif calculation == "mult"
    result = num1.to_i * num2.to_i
  elsif calculation == "div"
    result = num1.to_i / num2.to_i
  end

  puts "Your result is #{result}"
end

calculator()
