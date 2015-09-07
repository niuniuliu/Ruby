require 'date'

dstr = '2014-05-16T11:35:00-05:00'

d = Date::_xmlschema(dstr)
p d  #=> {:year=>2014, :mon=>5, :mday=>16, :hour=>11, :min=>35, :sec=>0, 
     #=>  :zone=>"-05:00", :offset=>-18000}
     
d = DateTime::_xmlschema(dstr)
p d  #=> {:year=>2014, :mon=>5, :mday=>16, :hour=>11, :min=>35, :sec=>0, 
     #=>  :zone=>"-05:00", :offset=>-18000}

p Date::xmlschema('2001-02-03')                       #=> #&lt;Date: 2001-02-03 ...> 
p DateTime::xmlschema('2001-02-03')                   #=> #&lt;Date: 2001-02-03 ...>      