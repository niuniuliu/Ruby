my_array = [1, 2, 3, 4, 'a', 'b', 'c', 'd']

my_array.each_with_index do |item, index|
  p "#{index}, #{item}"
end

# def countdown_to_zero(number)
#   if number < 0
#     puts "#{number} is less than zero. Done."
#   else 
#     while number > 0
#       p "Begin to count down your number #{number}."
#       number -= 1
#     end
#     puts "Now your number is #{number}."
#   end
  
# end

# countdown_to_zero(10)

def count_to_zero(number)
  if number <= 0 
    puts number
  else
    puts number
    count_to_zero(number - 1)
    
  end

end

count_to_zero(10)
