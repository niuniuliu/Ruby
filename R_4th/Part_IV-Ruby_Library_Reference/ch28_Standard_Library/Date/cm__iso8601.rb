require 'date'

dstr = '1997-07-16T19:20:30.45-01:00'

d = Date::_iso8601(dstr)
p d  #=> {:mday=>16, :year=>1997, :mon=>7, :hour=>19, :min=>20, :sec=>30, 
     #=>  :sec_fraction=>"45", :zone=>"-01:00", :offset=>-3600}
     
d = DateTime::_iso8601(dstr)
p d  #=> {:mday=>16, :year=>1997, :mon=>7, :hour=>19, :min=>20, :sec=>30, 
     #=>  :sec_fraction=>"45", :zone=>"-01:00", :offset=>-3600}

d = Date::iso8601('2001-02-03')                         
p d  #=> #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
d = Date::iso8601('20010203')                           
p d  #=> #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
d = Date::iso8601('2001-W05-6')                         
p d  #=> #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>

d = DateTime::iso8601('2001-02-03')                         
p d  #=> #<#DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>
d = DateTime::iso8601('20010203')                           
p d  #=> #<#DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>
d = DateTime::iso8601('2001-W05-6')                         
p d  #=> #<#DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>