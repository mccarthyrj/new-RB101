# loan_calculator.rb
# Prompt user to give three pieces of info:
#   loan amount - how much to borrow
#   APR - what interest rate do you qualify for (convert to montly rate)
#   loan duration - how many years would you like to pay
# Create a method to implement a formula to output
#   monthly interest rate
#   loan duration in months
#   and the montly payment

def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def valid_number?(num)
  integer?(num) || float?(num)
end

prompt("Welcome to the Loan Calculator! Enter your name: ")

name = nil
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name!")
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do
  prompt("Please enter how much money you'd like to borrow.")

  loan_amount = nil
  loop do
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      prompt("Please enter a valid amount.")
    end
  end

  prompt("Please enter the interest rate for which you qualify.")

  interest_rate = nil
  loop do
    interest_rate = gets.chomp
    if valid_number?(interest_rate)
      break
    else
      prompt("Please enter a valid interest rate.")
    end
  end

  prompt("Great! Now, how many years would you like to pay back the loan?")

  loan_duration = nil
  loop do
    loan_duration = gets.chomp
    if valid_number?(loan_duration)
      break
    else
      prompt("Please enter a number of years.")
    end
  end

  monthly_rate = (interest_rate.to_f / 100) / 12
  loan_months = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_f * (
    monthly_rate.to_f / (1 - ((1 + monthly_rate.to_f)**(-loan_months.to_f))))

  result_prompt = <<-MSG
  - Every month you will pay $#{monthly_payment.to_f.truncate(2)}
  - This is due every month for #{loan_months} months.
  - Your monthly interest rate is #{monthly_rate.truncate(5)}
  MSG

  puts(result_prompt)

  prompt("Would you like to calculate again? Please answer Y or N.")
  answer2 = gets.chomp
  break if answer2.downcase.start_with?('n')
end

prompt("Thanks for using the Loan Calculator! Goodbye.")
