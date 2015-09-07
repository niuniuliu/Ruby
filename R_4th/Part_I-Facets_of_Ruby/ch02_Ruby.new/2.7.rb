#---
# Excerpted from "Programming Ruby 1.9 and 2.0",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby4 for more book information.

block = lambda {puts "Hello from a block of code"}
block.call

#--- http://media.pragprog.com/titles/ruby4/code/intro/block_example.rb
def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts "In the block" }

#--- http://media.pragprog.com/titles/ruby4/code/intro/block_example2.rb
def who_says_what
  yield("Dave", "hello")
  yield("Andy", "goodbye")
end
  
who_says_what {|person, phrase| puts "#{person} says #{phrase}"}

animals = %w( bee cat dog ant ) # create an array
animals.each {|animal| print animal << " " } # iterate over the contents
print "\n"
animals.sort.each {|animal| print animal << " " }
print "\n"

[ 'cat', 'dog', 'horse' ].each {|name| print name, " " }
print "\n"
5.times { print "*" }
print "\n"
3.upto(6) {|i| print i }
print "\n"
('a'..'e').each {|char| print char }
print "\n"