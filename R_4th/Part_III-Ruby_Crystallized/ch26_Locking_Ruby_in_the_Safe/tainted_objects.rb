# internal data
x1 = "a string"
p x1.tainted? # => false
x2 = x1[2, 4]
p x2.tainted? # => false
p x1 =~ /([a-z])/ # => 0
p $1.tainted? # => false
# external data
y1 = ENV["HOME"]
p y1.tainted? # => true
y2 = y1[2, 4]
p y2.tainted? # => true
p y1 =~ /([a-z])/ # => 2
p $1.tainted? # => true