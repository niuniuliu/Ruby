#---
# Excerpted from "Programming Ruby 1.9 and 2.0",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby4 for more book information.

Song = Class.new
song1 = Song.new
p song1
# song1.title = "Ruby Tuesday"  #=> NoMethodError: undefined method `title=' for Song object
# song1.title = Song.new "Ruby Tuesday"  #=> ArgumentError: wrong number of arguments calling `initialize` (1 for 0)

def Song.initialize title
	@title = title
end

song1 = Song.initialize "Ruby Tuesday"
p song1
p song1.class

def Song.title= title
	@title = title
end

song1 = Song.title = "Ruby Tuesday"
p song1
p song1.class

class Song
  def initialize title
    @title = title
  end
  def title
    @title
  end
end

song1 = Song.new "Ruby Tuesday"
p song1
p song1.title
p song1.class

#--- http://media.pragprog.com/titles/ruby4/code/intro/puts_examples.rb
song = 1
sam = ""
def sam.play(a)
  "duh dum, da dum de dum ..."
end
puts "gin joint".length
puts "Rick".index("c")
puts 42.even?
puts sam.play(song)
puts song

# num = Math.abs(num) // Java code
p num = -1234 # => -1234
p positive = num.abs # => 1234