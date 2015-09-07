puts "Please input your first name:"

first_name = gets.chomp

puts "Please input your last name:"

last_name = gets.chomp

puts "Greeting #{first_name} #{last_name}!"


puts "Your name 10 times: #{10.times{p first_name + " " + last_name}}"
