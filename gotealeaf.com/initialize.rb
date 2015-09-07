#!/usr/bin/env ruby -wKU

=begin
class HelloWorld
  def initialize(myname = "Ruby")
    @name = myname
  end

  def hello
    puts "Hello, world. I am #{@name}"
  end

end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

bob.hello
alice.hello
ruby.hello

=end

# class HelloWorld

#   def name 
#     @name
#   end

#   def name=(value)
#     @name = value
#   end

# end

# bob = HelloWorld.new

# bob.name = "Bobo"

# p bob.name


class HelloWorld
  attr_accessor :name 

  def initialize(name)
    @name = name
  end

  def greet
    # puts "Hi, I am #{self.name}"
    puts "Hi, I am #{name}"
  end

  def test_name
    self.name = "Ruby"
    # puts "test_name is #{self.name}"
    puts "test_name is #{name}"
  end

end

niuniu = HelloWorld.new("NiuNiu")
niuniu.greet
niuniu.test_name




