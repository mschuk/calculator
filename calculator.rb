# create a calculator

def prompt(msg)
  puts("=> #{msg}")
end

def calculate(num1, num2, action)
  case action
    when '+'
      prompt(num1.to_f + num2.to_f)
    when '-'
      prompt(num1.to_f - num2.to_f)
    when  '*'
      prompt(num1.to_f * num2.to_f)
    when '/'
    prompt(num1.to_f / num2.to_f)
    else
    prompt("I do not understand the action you would like to perform.  Please try again.")
  end
end

def integer?(str)
  /^\d+$/.match(str)
end

def float?(str)
  /\d/.match(str) && /^\d*\.?\d*$/.match(str)
end

def number?(str)
  integer?(str) || float?(str)
end

continue = 'y'

until continue.downcase == 'n'

  num1 = ''
  until number?(num1)
    prompt("Please enter a number")
    num1 = gets.chomp
  end

  num2 = ''
  until number?(num2)
    prompt("Please enter another number")
    num2 = gets.chomp
  end


  prompt("Please enter the action you would like to perform: '+', '-', '*', '/' ")
  action = gets.chomp

  calculate(num1, num2, action)

  prompt("Would you like to continue? y for yes, n to exit ")
  continue = gets.chomp
end



