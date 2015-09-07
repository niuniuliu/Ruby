require 'date'

p Date::new(2001)                             #=> #&lt;Date: 2001-01-01 ...>
p Date::new(2001,2,3)                         #=> #&lt;Date: 2001-02-03 ...>
p Date::new(2001,2,-1)                        #=> #&lt;Date: 2001-02-28 ...>

p DateTime::new(2001)                         #=> #&lt;Date: 2001-01-01 ...>
p DateTime::new(2001,2,3)                     #=> #&lt;Date: 2001-02-03 ...>
p DateTime::new(2001,2,-1)                    #=> #&lt;Date: 2001-02-28 ...>