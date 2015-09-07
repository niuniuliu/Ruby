require 'date'

p Date.new(2001,2,3)     - 1                         #=> #<Date: 2001-02-02 ((2451943j,0s,0n),+0s,2299161j)>
p DateTime.new(2001,2,3) - Rational(1,2)             #=> #<DateTime: 2001-02-02T12:00:00+00:00 ((2451943j,43200s,0n),+0s,2299161j)>
p Date.new(2001,2,3)     - Date.new(2001)            #=> (33/1)
p DateTime.new(2001,2,3) - DateTime.new(2001,2,2,12) #=> (1/2)