require 'date'

p Date.new(2001,2,3).amjd                        #=> (51943/1)
p Date.new(2001,2,2).amjd                        #=> (51942/1)

p DateTime.new(2001,2,3,4,5,6,'+7').amjd         #=> (249325817/4800)
p DateTime.new(2001,2,2,14,5,6,'-7').amjd        #=> (249325817/4800)