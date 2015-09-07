def greeting(name)
  puts "Greeting #{name}!"
end

puts "Please input your name:"
my_name = gets.chomp
greeting my_name
