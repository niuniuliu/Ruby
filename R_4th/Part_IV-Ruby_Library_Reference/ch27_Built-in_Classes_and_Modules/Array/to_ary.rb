arg                                                = [ "a", "e", "i", "o" ]
puts arg.object_id
arg2                                               = arg.to_ary 
puts arg2.object_id 
puts arg2.inspect                                  #=> ["a", "e", "i", "o"]