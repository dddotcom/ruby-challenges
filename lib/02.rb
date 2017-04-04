# Reverse a string in place. In other words, do not create a new string or use other
# methods on the string such as reverse. The goal of the problem is to use a loop and
# the string accessors to figure out which values to swap for other values. Below is some sample output.

# Enter a string:
# reverse_me
# em_esrever

def reverse()
  puts "Enter a string:"
  str = gets.chomp
  length = str.length-1
  x = (str.length/2).floor
  str = str.split("")

  for i in (0...x) do
    temp = str[i]
    str[i] = str[length-i]
    str[length-i] = temp
    i+=1
  end
  puts str.join
end

reverse()
