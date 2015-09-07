class Klass
  def hello(*args)
    "Hello " + args.join(' ')
  end
end
k = Klass.new
p k.send :hello, "gentle", "readers"   #=> "Hello gentle readers"
p k.__send__ :hello, "gentle", "readers" # => "Hello gentle readers"