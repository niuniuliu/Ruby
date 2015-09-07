a                                                  = [ "a", "b", "c", "d" ]
puts a.map {|x| x + "!" }.inspect                  #=> ["a!", "b!", "c!", "d!"]
puts a.inspect                                     #=> [ "a", "b", "c", "d" ]

a                                                  = [ "a", "b", "c", "d" ]
puts a.map! {|x| x + "!" }.inspect                 #=> ["a!", "b!", "c!", "d!"]
puts a.inspect                                     #=> ["a!", "b!", "c!", "d!"]