require 'date'

string = '2008-04-02T20:00:00Z'

d = Date::_rfc3339(string)
p d  #=> {:zone=>"Z", :hour=>20, :min=>0, :sec=>0, 
     #=>  :year=>2008, :mon=>4, :mday=>2, :offset=>0}

d = DateTime::_rfc3339(string)
p d  #=> {:zone=>"Z", :hour=>20, :min=>0, :sec=>0, 
     #=>  :year=>2008, :mon=>4, :mday=>2, :offset=>0}
     
d = Date::rfc3339(string)
p d  #=> #<Date: 2008-04-02 ((2454559j,0s,0n),+0s,2299161j)>

d = DateTime::rfc3339(string)
p d  #=> #<DateTime: 2008-04-02T20:00:00+00:00 ((2454559j,72000s,0n),+0s,2299161j)>