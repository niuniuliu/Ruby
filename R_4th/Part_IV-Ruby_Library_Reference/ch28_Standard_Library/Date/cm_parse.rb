require 'date'

p Date::parse('2001-02-03')                   #=> #&lt;Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
p Date::parse('20010203')                     #=> #&lt;Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
p Date::parse('3rd Feb 2001')                 #=> #&lt;Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>

p DateTime::parse('2001-02-03')               #=> #&lt;DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>
p DateTime::parse('20010203')                 #=> #&lt;DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>
p DateTime::parse('3rd Feb 2001')             #=> #&lt;DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>
