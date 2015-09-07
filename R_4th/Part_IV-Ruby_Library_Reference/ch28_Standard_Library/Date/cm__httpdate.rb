require 'date'

dstr = 'Sat, 03 Feb 2001 00:00:00 GMT'

d = Date::_httpdate(dstr)
p d  #=> {:zone=>"GMT", :hour=>0, :min=>0, :sec=>0, :wday=>6,
     #=>  :year=>2001, :mon=>2, :mday=>3, :offset=>0}

d = DateTime::_httpdate(dstr)
p d  #=> {:zone=>"GMT", :hour=>0, :min=>0, :sec=>0, :wday=>6,
     #=>  :year=>2001, :mon=>2, :mday=>3, :offset=>0}
     
d = Date::httpdate(dstr)
p d  #=> #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>     

d = DateTime::httpdate(dstr)
p d  #=> #<DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>