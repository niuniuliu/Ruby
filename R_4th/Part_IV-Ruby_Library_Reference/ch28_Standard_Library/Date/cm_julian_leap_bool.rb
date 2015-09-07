require 'date'

p Date.julian_leap?(1900)                            #=> true
p Date.julian_leap?(1901)                            #=> false

p DateTime.julian_leap?(1900)                        #=> true
p DateTime.julian_leap?(1901)                        #=> false