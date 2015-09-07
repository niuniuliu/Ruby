arg                                               = [ "a", "e", "i", "o" ]
puts arg.object_id
arg2                                              = arg.to_a
puts arg2.object_id

class MyArray < Array ; end
ma                                                = MyArray.new arg
puts ma.object_id
ma2                                               = ma.to_a
puts ma2.object_id
puts ma2.inspect                                  #=> ["a", "e", "i", "o"]