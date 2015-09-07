def number_condition(num)
  if num > 0 && num < 100
    if num > 0 && num < 50
      puts "number is between 0 and 50."      
    elsif num > 50 && num < 100
      puts "number is between 50 and 100."
    end  
  else
    puts "number is greater than 100"
  end
end

# number_condition(ARGV[0].to_i)

def evaluate_case1_num(num)
  puts "Please enter a number between 0 and 100:"
  # num = gets.chomp.to_i

  if num < 0
    puts "You can't enter a negative number!"

  elsif num <= 50
    puts "#{num} is between 0 and 50."

  elsif num <=100
    puts "#{num} is between 51 and 100."

  else
    puts "#{num} is above 100"

  end
end


def evaluate_case2_num(num)
  puts "Please enter a number between 0 and 100:"
  # number = gets.chomp.to_i

  case num
  when 0..50
    puts "#{num} is between 0 and 50."
  when 51..100
    puts "#{num} is between 51 and 100."
  else
    if num < 0
      puts "You can't enter a negative number!"
    else
      puts "#{num} is above 100"
    end
  end
end

# evaluate_case2_num(ARGV[0].to_i)
evaluate_case1_num(ARGV[0].to_i)