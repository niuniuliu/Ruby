require 'date'

p Date::leap?(1900)                         #=> false
p Date::leap?(2000)                         #=> true

p DateTime::leap?(1900)                     #=> false
p DateTime::leap?(2000)                     #=> true