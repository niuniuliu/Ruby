require 'date'

p Date.new(2001,2,3)     === Date.new(2001,2,3)                      #=> true
p Date.new(2001,2,3)     === Date.new(2001,2,4)                      #=> false
p DateTime.new(2001,2,3) === DateTime.new(2001,2,3,12)               #=> true
p DateTime.new(2001,2,3) === DateTime.new(2001,2,3,0,0,0,'+24:00')   #=> true
p DateTime.new(2001,2,3) === DateTime.new(2001,2,4,0,0,0,'+24:00')   #=> false

p Date.new(2001,2,3)     == Date.new(2001,2,3)                       #=> true
p Date.new(2001,2,3)     == Date.new(2001,2,4)                       #=> false
p DateTime.new(2001,2,3) == DateTime.new(2001,2,3,12)                #=> false
p DateTime.new(2001,2,3) == DateTime.new(2001,2,3,0,0,0,'+24:00')    #=> false
p DateTime.new(2001,2,3) == DateTime.new(2001,2,4,0,0,0,'+24:00')    #=> false

p Date.new(2001,2,3).eql?      Date.new(2001,2,3)                    #=> true
p Date.new(2001,2,3).eql?      Date.new(2001,2,4)                    #=> false
p DateTime.new(2001,2,3).eql?  DateTime.new(2001,2,3,12)             #=> false
p DateTime.new(2001,2,3).eql?  DateTime.new(2001,2,3,0,0,0,'+24:00') #=> false
p DateTime.new(2001,2,3).eql?  DateTime.new(2001,2,4,0,0,0,'+24:00') #=> true