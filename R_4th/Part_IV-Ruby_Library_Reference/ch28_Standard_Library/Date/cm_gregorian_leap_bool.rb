require 'date'

b = Date.gregorian_leap?(1900)
p b  #=> false
b = Date.gregorian_leap?(2000)
p b  #=> true