require 'date'

string = "Wed, 02 Oct 2002 08:00:00 EST"

d = Date::_rfc2822(string)
p d   #=> {:zone=>"EST", :hour=>8, :min=>0, :sec=>0, :wday=>3, 
      #=>  :year=>2002, :mon=>10, :mday=>2, :offset=>-18000}

d = DateTime::_rfc2822(string)
p d   #=> {:zone=>"EST", :hour=>8, :min=>0, :sec=>0, :wday=>3, 
      #=>  :year=>2002, :mon=>10, :mday=>2, :offset=>-18000}
      
string = "Wed, 02 Oct 2002 13:00:00 GMT"
      
d = Date::_rfc2822(string)
p d   #=> {:zone=>"GMT", :hour=>13, :min=>0, :sec=>0, :wday=>3, 
      #=>  :year=>2002, :mon=>10, :mday=>2, :offset=>0}
      
d = DateTime::_rfc2822(string)
p d   #=> {:zone=>"GMT", :hour=>13, :min=>0, :sec=>0, :wday=>3, 
      #=>  :year=>2002, :mon=>10, :mday=>2, :offset=>0}      
      
string = "Wed, 02 Oct 2002 15:00:00 +0200"
      
d = Date::_rfc2822(string)
p d   #=> {:zone=>"+0200", :hour=>15, :min=>0, :sec=>0, 
      #=>  :wday=>3, :year=>2002, :mon=>10, :mday=>2, :offset=>7200}
      
d = DateTime::_rfc2822(string)
p d   #=> {:zone=>"+0200", :hour=>15, :min=>0, :sec=>0, 
      #=>  :wday=>3, :year=>2002, :mon=>10, :mday=>2, :offset=>7200}
      
d = Date::rfc2822('Sat, 3 Feb 2001 00:00:00 +0000')
p d   #=> #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>

d = DateTime::rfc2822('Sat, 3 Feb 2001 00:00:00 +0000')
p d   #=> #<DateTime: 2001-02-03T00:00:00+00:00 ((2451944j,0s,0n),+0s,2299161j)>      