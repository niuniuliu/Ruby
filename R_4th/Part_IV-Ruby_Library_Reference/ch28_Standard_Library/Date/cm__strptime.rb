require 'date'

dstr = '2014-05-16 11:35:00 -05:00'
fstr =  '%Y-%m-%d %H:%M:%S %Z'

d = Date::_strptime(dstr)        
p d  #=> {:year=>2014, :mon=>5, :mday=>16, :leftover=>" 11:35:00-05:00"}

d = DateTime::_strptime(dstr) 
p d  #=> nil

d = Date::_strptime(dstr, '%F') 
p d  #=> {:year=>2014, :mon=>5, :mday=>16, :leftover=>" 11:35:00 -05:00"}

d = DateTime::_strptime(dstr, '%F') 
p d  #=> {:year=>2014, :mon=>5, :mday=>16, :leftover=>" 11:35:00 -05:00"}

d = Date::_strptime(dstr, fstr)
p d  #=> {:year=>2014, :mon=>5, :mday=>16, :hour=>11, :min=>35, :sec=>0, 
     #=>  :zone=>"-05:00", :offset=>-18000}
 
d = DateTime::_strptime(dstr, fstr)
p d  #=> {:year=>2014, :mon=>5, :mday=>16, :hour=>11, :min=>35, :sec=>0, 
     #=>  :zone=>"-05:00", :offset=>-18000}

dstr = '2014-05-16T11:35:00-05:00'

d = Date::_strptime(dstr, '%F') 
p d  #=> {:year=>2014, :mon=>5, :mday=>16, :leftover=>"T11:35:00-05:00"}

d = DateTime::_strptime(dstr, '%F') 
p d  #=> {:year=>2014, :mon=>5, :mday=>16, :leftover=>"T11:35:00-05:00"}

d = Date::_strptime(dstr) 
p d  #=> {:year=>2014, :mon=>5, :mday=>16, :leftover=>"T11:35:00-05:00"}

d = DateTime::_strptime(dstr) 
p d  #=> {:year=>2014, :mon=>5, :mday=>16, :hour=>11, :min=>35, :sec=>0, 
     #=>  :zone=>"-05:00", :offset=>-18000}
     
p Date::strptime('2001-02-03', '%Y-%m-%d')            #=> #&lt;Date: 2001-02-03 ...>
p Date::strptime('03-02-2001', '%d-%m-%Y')            #=> #&lt;Date: 2001-02-03 ...>
p Date::strptime('2001-034', '%Y-%j')                 #=> #&lt;Date: 2001-02-03 ...>
p Date::strptime('2001-W05-6', '%G-W%V-%u')           #=> #&lt;Date: 2001-02-03 ...>
p Date::strptime('2001 04 6', '%Y %U %w')             #=> #&lt;Date: 2001-02-03 ...>
p Date::strptime('2001 05 6', '%Y %W %u')             #=> #&lt;Date: 2001-02-03 ...>
p Date::strptime('sat3feb01', '%a%d%b%y')             #=> #&lt;Date: 2001-02-03 ...>

p DateTime::strptime('2001-02-03', '%Y-%m-%d')        #=> #&lt;DateTime: 2001-02-03 ...>
p DateTime::strptime('03-02-2001', '%d-%m-%Y')        #=> #&lt;DateTime: 2001-02-03 ...>
p DateTime::strptime('2001-034', '%Y-%j')             #=> #&lt;DateTime: 2001-02-03 ...>
p DateTime::strptime('2001-W05-6', '%G-W%V-%u')       #=> #&lt;DateTime: 2001-02-03 ...>
p DateTime::strptime('2001 04 6', '%Y %U %w')         #=> #&lt;DateTime: 2001-02-03 ...>
p DateTime::strptime('2001 05 6', '%Y %W %u')         #=> #&lt;DateTime: 2001-02-03 ...>
p DateTime::strptime('sat3feb01', '%a%d%b%y')         #=> #&lt;DateTime: 2001-02-03 ...>
