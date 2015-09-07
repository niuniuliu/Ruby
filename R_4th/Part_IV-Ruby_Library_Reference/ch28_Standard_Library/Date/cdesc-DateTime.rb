require 'date'

p DateTime.instance_methods(false).sort
#=>  [:hour, :iso8601, :jisx0301, :min, :minute, :new_offset, :offset, :rfc3339, :sec, 
#=>   :sec_fraction, :second, :second_fraction, :strftime, :to_date, :to_datetime, :to_s, 
#=>   :to_time, :xmlschema, :zone]

p DateTime.new(2001,2,3,4,5,6)                     #=> #<DateTime: 2001-02-03T04:05:06+00:00 ((2451944j,14706s,0n),+0s,2299161j)>
p DateTime.new(2001,2,3.5)                         #=> #<DateTime: 2001-02-03T12:00:00+00:00 ((2451944j,43200s,0n),+0s,2299161j)>
p DateTime.new(2001,2,3,4,5,6,Rational(3,24))      #=> #<DateTime: 2001-02-03T04:05:06+03:00 ((2451944j,3906s,0n),+10800s,2299161j)>
p DateTime.new(2001,2,3,4,5,6,'+03:00')            #=> #<DateTime: 2001-02-03T04:05:06+03:00 ((2451944j,3906s,0n),+10800s,2299161j)>

p d = DateTime.parse('3rd Feb 2001 04:05:06+03:30')  
p d.hour                                           #=> 4
p d.min                                            #=> 5
p d.sec                                            #=> 6
p d.offset                                         #=> (7/48)
p d.zone                                           #=> "+03:30"
p d += Rational('1.5')                             #=> #<DateTime: 2001-02-04T16:05:06+03:30 ((2451945j,45306s,0n),+12600s,2299161j)>
p d = d.new_offset('+09:00')                       #=> #<DateTime: 2001-02-04T21:35:06+09:00 ((2451945j,45306s,0n),+32400s,2299161j)>
p d.strftime('%I:%M:%S %p')                        #=> "09:35:06 PM"
p d > DateTime.new(1999)                           #=> true