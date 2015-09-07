require 'date'

d = Date::commercial(2001)
p d  #=> #<Date: 2001-01-01 ((2451911j,0s,0n),+0s,2299161j)>
d = Date::commercial(2002)
p d  #=> #<Date: 2001-12-31 ((2452275j,0s,0n),+0s,2299161j)>
d = Date::commercial(2001,5,6)
p d  #=> #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
                          
d = DateTime::commercial(2001)
p d  #=> #<DateTime: 2001-01-01T00:00:00+00:00 ((2451911j,0s,0n),+0s,2299161j)>
d = DateTime::commercial(2002)
p d  #=> #<DateTime: 2001-12-31T00:00:00+00:00 ((2452275j,0s,0n),+0s,2299161j)>
d = DateTime::commercial(2001,5,6)
p d  #=> #<DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>                        