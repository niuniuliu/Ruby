require 'date'

p Date.new(2001,2,3).cwyear                          #=> 2001
p Date.new(2000,1,1).cwyear                          #=> 1999

p DateTime.new(2001,2,3).cwyear                      #=> 2001
p DateTime.new(2000,1,1).cwyear                      #=> 1999