require 'date'

d = Date.new(2000, 3, 31)
puts d + 3                                           #=> 2000-04-03

p Date.new(2001,2,3) + 1                             #=> #<Date: 2001-02-04 ...>
p DateTime.new(2001,2,3) + Rational(1,2)             #=> #<DateTime: 2001-02-03T12:00:00+00:00 ...>
p DateTime.new(2001,2,3) + Rational(-1,2)            #=> #<DateTime: 2001-02-02T12:00:00+00:00 ...>
p DateTime.jd(0,12) + DateTime.new(2001,2,3).ajd     #=> #<DateTime: 2001-02-03T00:00:00+00:00 ...>
p DateTime.jd(0,12) + 4712 * 365.25                  #=> #<DateTime: 0000-01-01T12:00:00+00:00 ...>