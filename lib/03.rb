# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit.
# Write three methods to perform these calculations and output the result to the user. Here is a sample output:
#
# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!

def bank_teller()
  balance = 4000
  command = ""
  until command == "yes" do
    puts "What would you like to do? (deposit, withdraw, check_balance)"
    command = gets.chomp
    if command == "deposit"
      deposit(balance)
    elsif command == "withdraw"
      withdraw(balance)
    elsif command == "check_balance"
      check_balance(balance)
    end
    puts "Are you done?"
    command = gets.chomp
  end
  puts "Thank you!"
end

def deposit(balance)
  puts "How much would you like to deposit?"
  d_value = gets.chomp
  balance += d_value.to_i
  check_balance(balance)
end

def withdraw(balance)
  puts "How much would you like to withdraw?"
  w_value = gets.chomp
  balance -= w_value.to_i
  check_balance(balance)
end

def check_balance(balance)
  puts "Your current balance is #{balance}"
end

bank_teller()
