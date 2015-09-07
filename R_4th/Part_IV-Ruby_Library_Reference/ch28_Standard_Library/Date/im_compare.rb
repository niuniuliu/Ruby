require 'date'

p Date.new(2001,2,3) <=> Date.new(2001,2,4)          #=> -1
p Date.new(2001,2,3) <=> Date.new(2001,2,3)          #=> 0
p Date.new(2001,2,3) <=> Date.new(2001,2,2)          #=> 1
p Date.new(2001,2,3) <=> Object.new                  #=> nil
p Date.new(2001,2,3) <=> Rational(4903887,2)         #=> 0

p DateTime.new(2001,2,3) <=> DateTime.new(2001,2,4)  #=> -1
p DateTime.new(2001,2,3) <=> DateTime.new(2001,2,3)  #=> 0
p DateTime.new(2001,2,3) <=> DateTime.new(2001,2,2)  #=> 1
p DateTime.new(2001,2,3) <=> Object.new              #=> nil
p DateTime.new(2001,2,3) <=> Rational(4903887,2)     #=> 0