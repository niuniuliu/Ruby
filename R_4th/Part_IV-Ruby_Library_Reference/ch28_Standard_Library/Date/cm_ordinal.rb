require 'date'

p Date::ordinal(2001)                        #=> #&lt;Date: 2001-01-01 ...>
p Date::ordinal(2001,34)                     #=> #&lt;Date: 2001-02-03 ...>
p Date::ordinal(2001,-1)                     #=> #&lt;Date: 2001-12-31 ...>

p DateTime::ordinal(2001)                    #=> #&lt;Date: 2001-01-01 ...>
p DateTime::ordinal(2001,34)                 #=> #&lt;Date: 2001-02-03 ...>
p DateTime::ordinal(2001,-1)                 #=> #&lt;Date: 2001-12-31 ...>