#---
# Excerpted from "Programming Ruby 1.9 and 2.0",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby4 for more book information.

#--- http://media.pragprog.com/titles/ruby4/code/intro/weekdays.rb
today = Time.now

if today.saturday?
  puts "Do chores around the house"
elsif today.sunday?
  puts "Relax"
else
  puts "Go to work"
end

num_pallets = 0
weight = 0
while weight < 100 and num_pallets <= 5
  # pallet = next_pallet()
  weight += 20
  num_pallets += 1
end
puts num_pallets 
puts weight

File.open(__FILE__, "r") do |f|
  lines = f.readlines
  #while line != "stop"
    puts lines
  #end
end

n = -20
while n <= 10
  puts n
  n += 1
end

radiation = 3333
if radiation > 3000
  puts "Danger, Will Robinson"
end

puts "Danger, Will Robinson" if radiation > 3000

square = 4
while square < 1000
  square = square * square
  puts square
  square += 1
end

square = square * square while square < 1000
puts square