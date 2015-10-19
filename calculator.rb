# create a calculator

def prompt(msg)
  puts "=> #{msg}"
end

def calculate(num1, num2, action)
  if is_num?(num1) && is_num?(num2)
    case action
      when '+'
        prompt(num1.to_i + num2.to_i)
      when '-'
        prompt(num1.to_i - num2.to_i)
      when  '*'
        prompt(num1.to_i * num2.to_i)
      when '/'
      prompt(num1.to_f / num2.to_f)
      else
      prompt("I do not understand the action you would like to perform.  Please try again.")
    end
  else
    prompt("You did not enter a number.  Please try again.")
  end
end

def is_num?(str)
  /\d$/ === str
end

continue = 'y'

until continue.downcase == 'n'
  prompt("Please enter a number")
  num1 = gets.chomp

  prompt("Please enter another number")
  num2 = gets.chomp

  prompt("Please enter the action you would like to perform")
  action = gets.chomp

  calculate(num1, num2, action)

  prompt("Would you like to continue? y for yes, n to exit ")
  continue = gets.chomp
end



