require 'date'

p Date::ITALY       #=> 2299161
p Date::ENGLAND     #=> 2361222
p Date::GREGORIAN   #=> #<Date::Infinity:0x126c554 @d=-1>
p Date::JULIAN      #=> #<Date::Infinity:0x1367c5a @d=1>

d = Date.civil(-1)
p d  #=> #&lt;Date: -0001-01-01 ((1720693j,0s,0n),+0s,2299161j)> 

d = Date.civil(0)
p d  #=> #&lt;Date: 0000-01-01 ((1721058j,0s,0n),+0s,2299161j)>

d = Date.civil(1)
p d  #=> #&lt;Date: 0001-01-01 ((1721424j,0s,0n),+0s,2299161j)> 

d = Date.civil(2000,2,3)
p d  #=> #&lt;Date: 2000-02-03 ((2451578j,0s,0n),+0s,2299161j)>

d = Date.civil(2000,2,-1)
p d  #=> #&lt;Date: 2001-02-28 ((2451969j,0s,0n),+0s,2299161j)>

d = DateTime.civil(2000)
p d  #=> #&lt;DateTime: 2001-01-01T00:00:00+00:00 ((2451911j,0s,0n),+0s,2299161j)>

d = DateTime.civil(2000,2,3)
p d  #=> #&lt;DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>

d = DateTime.civil(2000,2,-1)
p d  #=> #&lt;DateTime: 2001-02-28T00:00:00+00:00 ((2451969j,0s,0n),+0s,2299161j)>     