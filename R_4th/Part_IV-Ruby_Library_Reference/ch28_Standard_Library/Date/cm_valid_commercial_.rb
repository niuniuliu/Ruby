require 'date'

p Date::valid_commercial?(2001,5,6)                   #=> true
p Date::valid_commercial?(2001,5,8)                   #=> false

p DateTime::valid_commercial?(2001,5,6)               #=> true
p DateTime::valid_commercial?(2001,5,8)               #=> false