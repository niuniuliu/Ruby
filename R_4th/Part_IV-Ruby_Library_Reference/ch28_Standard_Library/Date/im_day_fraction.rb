require 'date'

p Date.new(2001,2,3).day_fraction             #=> (0/1)
p DateTime.new(2001,2,3,12).day_fraction      #=> (1/2)