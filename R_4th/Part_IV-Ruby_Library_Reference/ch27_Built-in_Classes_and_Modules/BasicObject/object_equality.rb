puts (1 == 1.0).inspect                #=> true
puts (1.eql? 1.0).inspect              #=> false
puts (1.equal? 1.0).inspect            #=> false