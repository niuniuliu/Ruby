require 'date'

p Date::valid_ordinal?(2001,34)                       #=> true
p Date::valid_ordinal?(2001,366)                      #=> false

p DateTime::valid_ordinal?(2001,34)                       #=> true
p DateTime::valid_ordinal?(2001,366)                      #=> false