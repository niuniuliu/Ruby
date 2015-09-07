require 'date'

p Date.new(2001,2,3)  << 1                 #=> #<Date: 2001-01-03 ...>                       
p Date.new(2001,1,31) << 11                #=> #<Date: 2000-02-29 ...>                      
p Date.new(2001,2,3)  << -1                #=> #<Date: 2001-03-03 ...>

p DateTime.new(2001,2,3)  << 1             #=> #<DateTime: 2001-01-03T00:00:00+00:00 ...>                       
p DateTime.new(2001,1,31) << 11            #=> #<DateTime: 2000-02-29T00:00:00+00:00 ...>                      
p DateTime.new(2001,2,3)  << -1            #=> #<DateTime: 2001-03-03T00:00:00+00:00 ...>                       