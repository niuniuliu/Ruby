require 'date'

dstr = '2001-02-03'
d = Date::_parse(dstr)
p d  #=> {:year=>2001, :mon=>2, :mday=>3}

d = DateTime::_parse(dstr)
p d  #=> {:year=>2001, :mon=>2, :mday=>3}

d = Date::parse('2001-02-03')
p d  #=> #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
d = Date::parse('20010203')
p d  #=> #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
d = Date::parse('3rd Feb 2001') 
p d  #=> #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>

d = DateTime::parse('2001-02-03')
p d  #=> #<DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>
d = DateTime::parse('20010203')
p d  #=> #<DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>
d = DateTime::parse('3rd Feb 2001') 
p d  #=> #<DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>