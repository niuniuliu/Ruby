#---
# Excerpted from "Programming Ruby 1.9 and 2.0",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby4 for more book information.

a = [ 1, 'cat', 3.14 ] # array with three elements
puts "The first element is #{a[0]}" #=> The first element is 1
# set the third element
a[2] = nil
puts "The array is now #{a.inspect}" #=> The array is now [1, "cat", nil]

a = [ 'ant', 'bee', 'cat', 'dog', 'elk' ]
p a[0] # => "ant"
p a[3] # => "dog"
# this is the same:
a = %w{ ant bee cat dog elk }
p a[0] # => "ant"
p a[3] # => "dog"

#--- http://media.pragprog.com/titles/ruby4/code/intro/hash_example.rb
inst_section = {
  'cello'     => 'string',
  'clarinet'  => 'woodwind',
  'drum'      => 'percussion',
  'oboe'      => 'woodwind',
  'trumpet'   => 'brass',
  'violin'    => 'string'
}
p inst_section['oboe']    #=> "woodwind"
p inst_section['cello']   #=> "string"
p inst_section['bassoon'] #=> nil

histogram = Hash.new(0) # The default value is zero
p histogram['ruby'] # => 0
histogram['ruby'] = histogram['ruby'] + 1
p histogram['ruby'] # => 1
 