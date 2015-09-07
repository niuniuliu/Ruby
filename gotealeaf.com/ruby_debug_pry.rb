require "pry"

a = [1, 2, 3]
b = ['a', 'b', 'c']
a << 4
binding.pry
b << 'd'
binding.pry
puts a
