require 'date'

p Date.new(2001,2,3).asctime                     #=> "Sat Feb  3 00:00:00 2001"
p Date.new(2001,2,2).asctime                     #=> "Fri Feb  2 00:00:00 2001"

p DateTime.new(2001,2,3,4,5,6,'+7').asctime      #=> "Sat Feb  3 04:05:06 2001"
p DateTime.new(2001,2,2,14,5,6,'-7').asctime     #=> "Fri Feb  2 14:05:06 2001"