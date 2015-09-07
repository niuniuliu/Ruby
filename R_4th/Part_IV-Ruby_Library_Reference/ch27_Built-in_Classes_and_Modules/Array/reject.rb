a                                                  = [ "a", "b", "c" ]
puts a.reject {|x| x >= "b" }.inspect             #=> ["a"]
puts a.reject {|x| x >= "b" }.inspect             #=> ["a"]

a                                                  = [ "a", "b", "c" ]
puts a.reject! {|x| x >= "b" }.inspect            #=> ["a"]
puts a.reject! {|x| x >= "b" }.inspect            #=> nil