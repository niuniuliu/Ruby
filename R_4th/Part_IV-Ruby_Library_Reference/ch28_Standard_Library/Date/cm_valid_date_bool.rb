require 'date'

p Date::valid_date?(2001,2,3)                         #=> true
p Date::valid_date?(2001,2,29)                        #=> false

p DateTime::valid_date?(2001,2,3)                     #=> true
p DateTime::valid_date?(2001,2,29)                    #=> false