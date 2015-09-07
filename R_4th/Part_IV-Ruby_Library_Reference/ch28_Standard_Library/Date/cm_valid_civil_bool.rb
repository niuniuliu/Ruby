require 'date'

p Date::valid_civil?(2001,2,3)                         #=> true
p Date::valid_civil?(2001,2,29)                        #=> false

p DateTime::valid_civil?(2001,2,3)                     #=> true
p DateTime::valid_civil?(2001,2,29)                    #=> false